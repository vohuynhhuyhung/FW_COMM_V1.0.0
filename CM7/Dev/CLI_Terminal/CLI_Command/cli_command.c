/*
 * cli_command.c
 *
 *  Created on: Apr 1, 2025
 *      Author: HTSANG
 */

#include "cli_command.h"

#include <stdlib.h>
#include <string.h>

#include "usbd_cdc_if.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "semphr.h"
#include "task.h"
#include "timers.h"
#include "../../BSP/USB_CDC/cdc_driver.h"
#include "csp.h"
#include "adc_driver.h"
#include "spi_driver.h"

#include "ff.h"
#include "diskio.h"




/*************************************************
 *                Private typedef                 *
 *************************************************/
csp_conn_t *conn;
/*************************************************
 *                Private variable                 *
 *************************************************/
FATFS fs;
FIL file;
FRESULT res;
DIR dir;
FILINFO fno;
UINT bw;

/*************************************************
 *                Private function                 *
 *************************************************/
static FRESULT delete_recursive(const char *path)
{
    FRESULT fr;
    char child[256];

    fr = f_opendir(&dir, path);
    if (fr != FR_OK) return fr;

    for (;;) {
        fr = f_readdir(&dir, &fno);
        if (fr != FR_OK || fno.fname[0] == 0) break;

        if (!strcmp(fno.fname, ".") || !strcmp(fno.fname, ".."))
            continue;

        snprintf(child, sizeof(child), "%s/%.200s", path, fno.fname);

        if (fno.fattrib & AM_DIR) {
            fr = delete_recursive(child);
            if (fr != FR_OK) break;
        } else {
            f_unlink(child);
        }
    }

    f_closedir(&dir);

    return f_unlink(path);
}

/*************************************************
 *                Command Define                 *
 *************************************************/


/*************************************************
 *                Command Prototype              *
 *************************************************/
static void CMD_Clear_CLI(EmbeddedCli *cli, char *args, void *context);
static void CMD_Reset(EmbeddedCli *cli, char *args, void *context);
static void CMD_Ping(EmbeddedCli *cli, char *args, void *context);
static void CMD_Send_CSP(EmbeddedCli *cli, char *args, void *context);
static void CMD_Close(EmbeddedCli *cli, char *args, void *context);
static void CMD_Get_Temperature(EmbeddedCli *cli, char *args, void *context);
static void CMD_Get_Current(EmbeddedCli *cli, char *args, void *context);
static void CMD_Send_LVDS(EmbeddedCli *cli, char *args, void *context);

static void CMD_Create_Folder(EmbeddedCli *cli, char *args, void *context);
static void CMD_Create_File(EmbeddedCli *cli, char *args, void *context);
static void CMD_Change_Directory(EmbeddedCli *cli, char *args, void *context);
static void CMD_Print_Working_Directory(EmbeddedCli *cli, char *args, void *context);
static void CMD_Remove(EmbeddedCli *cli, char *args, void *context);
static void CMD_Write_eMMC(EmbeddedCli *cli, char *args, void *context);
static void CMD_Read_eMMC(EmbeddedCli *cli, char *args, void *context);
static void CMD_List(EmbeddedCli *cli, char *args, void *context);

/*************************************************
 *                 Command  Array                *
 *************************************************/
// Guide: Command bindings are declared in the following order:
// { category, name, help, tokenizeArgs, context, binding }
// - category: Command group; set to NULL if grouping is not needed.
// - name: Command name (required)
// - help: Help string describing the command (required)
// - tokenizeArgs: Set to true to automatically split arguments when the command is called.
// - context: Pointer to a command-specific context; can be NULL.
// - binding: Callback function that handles the command.

static const CliCommandBinding cliStaticBindings_internal[] = {
    // Common
    { "Ultis", "help",         "Print list of all available CLI commands [Firmware: 1]", false, NULL, CMD_Help },
    { "Ultis", "cls",          "Clear the console output screen",                        false, NULL, CMD_Clear_CLI },
    { "Ultis", "reset",        "Perform MCU software reset",                             false, NULL, CMD_Reset },
	{ "Ultis", "csp_ping",	   "Connect to dst/port.",                       			 true,  NULL, CMD_Ping },
	{ "Ultis", "csp_send",     "CSP Send",                         						 true,  NULL, CMD_Send_CSP },
	{ "Ultis", "csp_close",    "Close connect CSP",                         			 false, NULL, CMD_Close },
	{ "Ultis", "lvds_send",    "LVDS Send",                         					 true,  NULL, CMD_Send_LVDS },
	{ "Ultis", "get_temp",     "Get board temperature",                         		 true,  NULL, CMD_Get_Temperature },
	{ "Ultis", "get_current",  "Get board current",                         			 false, NULL, CMD_Get_Current },

	{ "Ultis", "mkdir",   	   "Create Folder",                         			 	 true,  NULL, CMD_Create_Folder },
	{ "Ultis", "touch",   	   "Create File",                         			 		 true,  NULL, CMD_Create_File },
	{ "Ultis", "cd",   	   	   "Change Directory",                         			 	 true,  NULL, CMD_Change_Directory },
	{ "Ultis", "pwd",   	   "Print Working Directory",                         		 false, NULL, CMD_Print_Working_Directory },
	{ "Ultis", "rm",   	   	   "Remove file,folder",                         		 	 true,  NULL, CMD_Remove },
	{ "Ultis", "echo",   	   "Write eMMC",                         			 		 true,  NULL, CMD_Write_eMMC },
	{ "Ultis", "cat",    	   "Read eMMC",                         			 		 true,  NULL, CMD_Read_eMMC },
	{ "Ultis", "ls",    	   "List File",                         			 		 false, NULL, CMD_List },
};

/*************************************************
 *             Command List Function             *
 *************************************************/

static void CMD_Clear_CLI(EmbeddedCli *cli, char *args, void *context) {
    char buffer[10];
    snprintf(buffer, sizeof(buffer), "\33[2J");
    embeddedCliPrint(cli, buffer);
}

static void CMD_Reset(EmbeddedCli *cli, char *args, void *context) {
	NVIC_SystemReset();
    embeddedCliPrint(cli, "");
}

static void CMD_Ping(EmbeddedCli *cli, char *args, void *context) {
	(void) context;

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count < 2) {
        embeddedCliPrint(cli, "Usage: connect <dst> <port>");
        return;
    }

    const char *s_dst = embeddedCliGetToken(args, 1);
    const char *s_port = embeddedCliGetToken(args, 2);

    if (!s_dst || !s_port) {
        embeddedCliPrint(cli, "Usage: connect <dst> <port>");
        return;
    }

    long dst_l = strtol(s_dst, NULL, 0);
    long port_l = strtol(s_port, NULL, 0);

    if (dst_l < 0 || dst_l > 255 || port_l < 0 || port_l > 255) {
        embeddedCliPrint(cli, "Invalid arguments. dst and port: 0..255");
        return;
    }

    uint8_t dst = (uint8_t) dst_l;
    uint8_t port = (uint8_t) port_l;

    conn = csp_connect(CSP_PRIO_NORM, dst, port, 1000, CSP_O_NONE);
    if (conn == NULL) {
        embeddedCliPrint(cli, "csp_connect: Connection failed (NULL)");
        return;
    }

    char out[64];
    snprintf(out, sizeof(out), "Connected to dst=%u port=%u", (unsigned)dst, (unsigned)port);
    embeddedCliPrint(cli, out);
}

static void CMD_Send_CSP(EmbeddedCli *cli, char *args, void *context) {
    (void) context;

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count < 3) {
        embeddedCliPrint(cli, "Usage: csp_send <dst> <port> <message>");
        return;
    }

    const char *s_dst  = embeddedCliGetToken(args, 1);
    const char *s_port = embeddedCliGetToken(args, 2);

    long dst_l  = strtol(s_dst,  NULL, 0);
    long port_l = strtol(s_port, NULL, 0);

    if (dst_l < 0 || dst_l > 255 || port_l < 0 || port_l > 255) {
        embeddedCliPrint(cli, "Invalid dst/port. Range: 0..255");
        return;
    }

    uint8_t dst   = (uint8_t) dst_l;
    uint8_t dport = (uint8_t) port_l;

    size_t msg_len = 0;
    for (uint16_t i = 3; i <= tok_count; ++i) {
        const char *tk = embeddedCliGetToken(args, i);
        msg_len += strlen(tk);
        if (i != tok_count) msg_len += 1;
    }

    if (msg_len == 0) {
        embeddedCliPrint(cli, "Empty message");
        return;
    }

    const uint32_t timeout_ms = 1000;
    csp_conn_t *conn = csp_connect(CSP_PRIO_NORM, dst, dport, timeout_ms, CSP_O_NONE);
    if (conn == NULL) {
        embeddedCliPrint(cli, "csp_connect failed");
        return;
    }

    csp_packet_t *pkt = csp_buffer_get(msg_len);
    if (pkt == NULL) {
        csp_close(conn);
        embeddedCliPrint(cli, "csp_buffer_get failed");
        return;
    }

    const char *hex_str = embeddedCliGetToken(args, 3);
    size_t hex_len = strlen(hex_str);

    if (hex_len % 2 != 0) {
        embeddedCliPrint(cli, "Invalid hex string: odd number of digits");
        csp_close(conn);
        csp_buffer_free(pkt);
        return;
    }

    pkt->length = (uint16_t)(hex_len / 2);

    for (size_t i = 0; i < pkt->length; i++) {
        char byte_str[3] = { hex_str[i*2], hex_str[i*2 + 1], '\0' };
        unsigned int byte_val = 0;
        if (sscanf(byte_str, "%2x", &byte_val) != 1) {
            embeddedCliPrint(cli, "Invalid hex digit");
            csp_close(conn);
            csp_buffer_free(pkt);
            return;
        }
        pkt->data[i] = (uint8_t)byte_val;
    }
//	const char *tk = embeddedCliGetToken(args, i);
//	size_t l = strlen(tk);
//	memcpy(&pkt->data[off], tk, l);
//	off += l;
//	if (i != tok_count) pkt->data[off++] = ' ';

    if (csp_send(conn, pkt, 1000) == CSP_ERR_NONE) {
        csp_buffer_free(pkt);
        csp_close(conn);
        embeddedCliPrint(cli, "csp_send failed");
        return;
    }

    csp_packet_t *reply = csp_read(conn, 1000);
    if (reply) {
        char out[128];
        snprintf(out, sizeof(out), "Reply (%u bytes): %.*s", reply->length, reply->length, reply->data);
        embeddedCliPrint(cli, out);
        csp_buffer_free(reply);
    } else {
        embeddedCliPrint(cli, "No reply received (timeout)");
    }

    csp_close(conn);

    char out2[64];
    snprintf(out2, sizeof(out2), "Sent %u bytes", (unsigned)pkt->length);
    embeddedCliPrint(cli, out2);
}


static void CMD_Close(EmbeddedCli *cli, char *args, void *context){
	csp_close(conn);
	embeddedCliPrint(cli, "Close CSP");
}

static void CMD_Get_Temperature(EmbeddedCli *cli, char *args, void *context){
	(void) context;

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count < 1) {
        embeddedCliPrint(cli, "Usage: get_temperature <index>");
        return;
    }

    const char *s_index = embeddedCliGetToken(args, 1);
    long index = strtol(s_index, NULL, 0);
    if (index < 1 || index > 3) {
        embeddedCliPrint(cli, "Index must be 1, 2, or 3\r\n");
        return;
    }

    uint16_t raw = ADC1_ReadIndex((uint8_t)index);
    if (raw == 0xFFFF) {
        embeddedCliPrint(cli, "Invalid ADC channel index\r\n");
        return;
    }

    int32_t temperature = ((raw* 3300)- (500* 65535))/ 65535 ;

    char buf[64];
    snprintf(buf, sizeof(buf), "board_temp_%ld: temperature=%ld C\r\n", index, temperature);
    embeddedCliPrint(cli, buf);

}

static void CMD_Get_Current(EmbeddedCli *cli, char *args, void *context){

	uint16_t raw = ADC2_Read();
	uint32_t current = ((raw*33)/65535)* 549;

    char buf[64];
    snprintf(buf, sizeof(buf), "board_temp_current: current=%ld mA\r\n", current);
    embeddedCliPrint(cli, buf);
}

static void CMD_Send_LVDS(EmbeddedCli *cli, char *args, void *context){

//	uint8_t data[0];
//    const char *hex_str = embeddedCliGetToken(args, 1);
//    size_t hex_len = strlen(hex_str);
//
//    if (hex_len % 2 != 0) {
//        embeddedCliPrint(cli, "Invalid hex string: odd number of digits");
//        return;
//    }
//
//    size_t len;
//    len = (uint16_t)(hex_len / 2);
//
//    for (size_t i = 0; i < len; i++) {
//        char byte_str[3] = { hex_str[i*2], hex_str[i*2 + 1], '\0' };
//        unsigned int byte_val = 0;
//        if (sscanf(byte_str, "%2x", &byte_val) != 1) {
//            embeddedCliPrint(cli, "Invalid hex digit");
//            return;
//        }
//        data[i] = (uint8_t)byte_val;
//    }

//    spi_ll_tx_hdtx(SPI1, payload, sizeof(payload));

	SPI_Transmit(SPI2,0xAA);
}

static void CMD_Create_Folder(EmbeddedCli *cli, char *args, void *context){
	char buf[64];

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count < 1) {
        embeddedCliPrint(cli, "Usage: create_folder <name>\r\n");
        return;
    }

    const char *foldername = embeddedCliGetToken(args, 1);

    res = f_mkdir(foldername);
    if (res == FR_OK){
        snprintf(buf, sizeof(buf), "Folder created: %s\r\n", foldername);
        embeddedCliPrint(cli, buf);
    } else {
        snprintf(buf, sizeof(buf), "f_mkdir failed: %d\r\n", res);
        embeddedCliPrint(cli, buf);
    }
}

static void CMD_Create_File(EmbeddedCli *cli, char *args, void *context){
	char buf[64];

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count < 1) {
        embeddedCliPrint(cli, "Usage: create_file <name>\r\n");
        return;
    }

    const char *filename = embeddedCliGetToken(args, 1);

    res = f_open(&file, filename, FA_CREATE_ALWAYS | FA_WRITE);
    if (res == FR_OK){
        snprintf(buf, sizeof(buf), "File created: %s\r\n", filename);
        embeddedCliPrint(cli, buf);
    } else {
        snprintf(buf, sizeof(buf), "f_open failed: %d\r\n", res);
        embeddedCliPrint(cli, buf);
    }

}

static void CMD_Write_eMMC(EmbeddedCli *cli, char *args, void *context){
	(void)context;
	char msg[80];
	UINT bw;

	uint16_t tok_count = embeddedCliGetTokenCount(args);
	if (tok_count < 3) {
		embeddedCliPrint(cli, "Usage: echo [data] [>] [>>] <path>\r\n");
		return;
	}

	int flag = 0;
	const char *target = NULL;


	for (uint16_t i = 2; i <= tok_count; ++i) {
		const char *tk = embeddedCliGetToken(args, i);
		if (strcmp(tk, ">") == 0) flag = 1;
		else if (strcmp(tk, ">>") == 0) flag = 0;
		else target = tk;
	}

	if (!target) {
		embeddedCliPrint(cli, "echo: missing operand\r\n");
		return;
	}

    const char *filename = embeddedCliGetToken(args, 3);
    const char *text     = embeddedCliGetToken(args, 1);

    if(flag) {
    	res = f_open(&file, filename, FA_CREATE_ALWAYS | FA_WRITE);
    	if (res != FR_OK) {
			snprintf(msg, sizeof(msg), "echo: cannot open '%s' (%d)\r\n", filename, res);
			embeddedCliPrint(cli, msg);
			return;
    	}

	f_write(&file, text, strlen(text), &bw);
	f_write(&file, "\r\n", 2, &bw);
	f_close(&file);
    }else {
        res = f_open(&file, filename, FA_OPEN_APPEND | FA_WRITE);
        if (res != FR_OK) {
            snprintf(msg, sizeof(msg), "echo: cannot open '%s' (%d)\r\n", filename, res);
            embeddedCliPrint(cli, msg);
            return;
        }

        f_write(&file, text, strlen(text), &bw);
        f_write(&file, "\r\n", 2, &bw);
        f_close(&file);
    }

}

static void CMD_Read_eMMC(EmbeddedCli *cli, char *args, void *context){
	(void)context;
	char buf[128];

	uint16_t tok_count = embeddedCliGetTokenCount(args);
	if (tok_count < 1) {
		embeddedCliPrint(cli, "Usage: cat [file]\r\n");
		return;
	}

    const char *filename = embeddedCliGetToken(args, 1);

    res = f_open(&file, filename, FA_READ);
    if (res != FR_OK) {
        char msg[128];
        snprintf(msg, sizeof(msg),
                 "cat: %s: No such file or directory\r\n", filename);
        embeddedCliPrint(cli, msg);
        return;
    }

    for (;;) {
        res = f_read(&file, buf, sizeof(buf) - 1, &bw);
        if (res != FR_OK || bw == 0) break;

        buf[bw] = '\0';
        embeddedCliPrint(cli, buf);
    }

    f_close(&file);
    embeddedCliPrint(cli, "\r\n");

}

static void CMD_List(EmbeddedCli *cli, char *args, void *context) {
    FRESULT fr;

    char path[256];
    char msg[320];

    uint16_t tok_count = embeddedCliGetTokenCount(args);
    if (tok_count >= 1) {
        const char *userPath = embeddedCliGetToken(args, 1);
        if (userPath && *userPath) {
            snprintf(path, sizeof(path), "%s", userPath);
        } else {
            snprintf(path, sizeof(path), ".");
        }
    } else {
        snprintf(path, sizeof(path), ".");
    }

    fr = f_opendir(&dir, path);
    if (fr != FR_OK) {
        snprintf(msg, sizeof(msg), "Cannot open '%s' (err=%d)\r\n", path, fr);
        embeddedCliPrint(cli, msg);
        return;
    }

#if FF_FS_RPATH
    {
        char cwd[256];
        if (f_getcwd(cwd, sizeof(cwd)) == FR_OK) {
            snprintf(msg, sizeof(msg), "Directory: %s\r\n", cwd);
        } else {
            snprintf(msg, sizeof(msg), "Directory: (unknown)\r\n");
        }
        embeddedCliPrint(cli, msg);
    }
#endif

    for (;;) {
        fr = f_readdir(&dir, &fno);
        if (fr != FR_OK || fno.fname[0] == 0)
            break;

        if (fno.fattrib & (AM_HID | AM_SYS))
            continue;

        if (fno.fattrib & AM_DIR) {
            snprintf(msg, sizeof(msg), "<DIR>          %.200s\r\n", fno.fname);
        } else {
            snprintf(msg, sizeof(msg), "%10lu  %.200s\r\n", (unsigned long)fno.fsize, fno.fname);
        }
        embeddedCliPrint(cli, msg);
    }

    f_closedir(&dir);
}

static void CMD_Change_Directory(EmbeddedCli *cli, char *args, void *context){
    (void)context;
    char msg[128];

    uint16_t n = embeddedCliGetTokenCount(args);
    if (n < 1) {
        f_chdir("0:/");
        return;
    }

    const char *path = embeddedCliGetToken(args, 1);
    FRESULT res = f_chdir(path);
    if (res != FR_OK) {
        snprintf(msg, sizeof(msg), "cd: %s: No such file or directory\r\n", path);
        embeddedCliPrint(cli, msg);
    }
}

static void CMD_Print_Working_Directory(EmbeddedCli *cli, char *args, void *context){
    (void)args;
    (void)context;
    char buf[256];

    if (f_getcwd(buf, sizeof(buf)) == FR_OK)
        embeddedCliPrint(cli, buf), embeddedCliPrint(cli, "\r\n");
    else
        embeddedCliPrint(cli, "(error reading current directory)\r\n");
}

static void CMD_Remove(EmbeddedCli *cli, char *args, void *context){
	(void)context;
	char buf[256];

	uint16_t tok_count = embeddedCliGetTokenCount(args);
	if (tok_count < 1) {
		embeddedCliPrint(cli, "Usage: rm [-r] [-f] <path>\r\n");
		return;
	}

	int flag_r = 0, flag_f = 0;
	const char *target = NULL;


	for (uint16_t i = 1; i <= tok_count; ++i) {
		const char *tk = embeddedCliGetToken(args, i);
		if (strcmp(tk, "-r") == 0) flag_r = 1;
		else if (strcmp(tk, "-f") == 0) flag_f = 1;
		else target = tk;
	}

	if (!target) {
		embeddedCliPrint(cli, "rm: missing operand\r\n");
		return;
	}

	FRESULT fr = f_stat(target, &fno);

	if (fr == FR_NO_FILE) {
		if (!flag_f) {
			snprintf(buf,sizeof(buf), "rm: cannot remove '%s': No such file or directory\r\n", target);
			embeddedCliPrint(cli, buf);
		}
		return;
	}

	if (fr != FR_OK) {
		snprintf(buf,sizeof(buf), "rm: error accessing '%s' (%d)\r\n", target, fr);
		embeddedCliPrint(cli, buf);
		return;
	}

	if (fno.fattrib & AM_DIR) {

		if (flag_r) {
			fr = delete_recursive(target);
			if (fr != FR_OK && !flag_f){
				snprintf(buf,sizeof(buf), "rm: failed to remove '%s' (%d)\r\n", target, fr);
				embeddedCliPrint(cli, buf);
			}
		} else {
			fr = f_unlink(target);
			if (fr == FR_DENIED && !flag_r) {
				snprintf(buf,sizeof(buf), "rm: cannot remove '%s': Directory not empty\r\n", target);
				embeddedCliPrint(cli, buf);
			} else if (fr != FR_OK && !flag_f) {
				snprintf(buf,sizeof(buf), "rm: failed to remove '%s' (%d)\r\n", target, fr);
				embeddedCliPrint(cli, buf);
			}
		}
	} else {
		fr = f_unlink(target);
		if (fr != FR_OK && !flag_f){
			snprintf(buf,sizeof(buf), "rm: failed to remove '%s' (%d)\r\n", target, fr);
			embeddedCliPrint(cli, buf);
		}
	}
}
/*************************************************
 *                  End CMD List                 *
 *************************************************/

/*************************************************
 *                Getter - Helper                *
 *************************************************/
const CliCommandBinding *getCliStaticBindings(void) {
    return cliStaticBindings_internal;
}

uint16_t getCliStaticBindingCount(void) {
    return sizeof(cliStaticBindings_internal) / sizeof(cliStaticBindings_internal[0]);
}
