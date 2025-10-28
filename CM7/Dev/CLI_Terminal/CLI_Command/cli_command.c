/*
 * cli_command.c
 *
 *  Created on: Apr 1, 2025
 *      Author: HTSANG
 */

#include "cli_command.h"

#include <stdlib.h>
#include <string.h>

//#include "usbd_cdc_if.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "semphr.h"
#include "task.h"
#include "timers.h"
#include "../../BSP/USB_CDC/cdc_driver.h"
#include "csp.h"
#include "adc_driver.h"



/*************************************************
 *                Private typedef                 *
 *************************************************/
 csp_conn_t *conn;
/*************************************************
 *                Private function                 *
 *************************************************/

/*************************************************
 *                Private variable                 *
 *************************************************/


/*************************************************
 *                Command Define                 *
 *************************************************/


/*************************************************
 *                Command Prototype              *
 *************************************************/
static void CMD_Clear_CLI(EmbeddedCli *cli, char *args, void *context);
static void CMD_Reset(EmbeddedCli *cli, char *args, void *context);
static void CMD_Ping(EmbeddedCli *cli, char *args, void *context);
static void CMD_Send(EmbeddedCli *cli, char *args, void *context);
static void CMD_Close(EmbeddedCli *cli, char *args, void *context);
static void CMD_Get_Temperature(EmbeddedCli *cli, char *args, void *context);
static void CMD_Get_Current(EmbeddedCli *cli, char *args, void *context);
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
    { "Ultis", "help",         "Print list of all available CLI commands [Firmware: 1]", false,  NULL, CMD_Help },
    { "Ultis", "cls",          "Clear the console output screen",                        false,  NULL, CMD_Clear_CLI },
    { "Ultis", "reset",        "Perform MCU software reset",                             false,  NULL, CMD_Reset },
	{ "Ultis", "csp_ping",	   "Connect to dst/port.",                       			 true,  NULL, CMD_Ping },
	{ "Ultis", "csp_send",     "CSP Send",                         						 true,  NULL, CMD_Send },
	{ "Ultis", "csp_close",    "Close connect CSP",                         			 false,  NULL, CMD_Close },
	{ "Ultis", "get_temp",     "Get board temperature",                         		 true,  NULL, CMD_Get_Temperature },
	{ "Ultis", "get_current",     "Get board current",                         			 false,  NULL, CMD_Get_Current },
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

static void CMD_Send(EmbeddedCli *cli, char *args, void *context) {
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

    size_t off = 0;
    for (uint16_t i = 3; i <= tok_count; ++i) {
        const char *tk = embeddedCliGetToken(args, i);
        size_t l = strlen(tk);
        memcpy(&pkt->data[off], tk, l);
        off += l;
        if (i != tok_count) pkt->data[off++] = ' ';
    }
    pkt->length = (uint16_t) msg_len;

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
    snprintf(out2, sizeof(out2), "Sent %u bytes", (unsigned)msg_len);
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
