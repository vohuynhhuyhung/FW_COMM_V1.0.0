/*
 * cli_setup.c
 *
 *  Created on: Apr 1, 2025
 *      Author: HTSANG
 */

#include "cli_setup.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

// Expand cli implementation here (must be in one file only)
#define EMBEDDED_CLI_IMPL

#include "embedded_cli.h"
#include "cli_command.h"

#include "../../BSP/USB_CDC/cdc_driver.h"
#include "usbd_cdc_if.h"

#include "FreeRTOS.h"
#include "queue.h"
#include "semphr.h"
#include "task.h"
#include "timers.h"

#include "uart_driver.h"

// CLI buffer
/*************************************************
 *           CLI Static Buffer Define            *
 *************************************************/

#define COMM_USB_CLI_BUFFER_SIZE			2048
static  CLI_UINT	COMM_USB_cliStaticBuffer[BYTES_TO_CLI_UINTS(COMM_USB_CLI_BUFFER_SIZE)];

#define COMM_UART_CLI_BUFFER_SIZE			2048
static  CLI_UINT	COMM_UART_cliStaticBuffer[BYTES_TO_CLI_UINTS(COMM_UART_CLI_BUFFER_SIZE)];


/*************************************************
 *             ----------------------            *
 *************************************************/

static EmbeddedCli *cli_COMM_USB;
static EmbeddedCli *cli_COMM_UART;

// Bool to disable the interrupts, if CLI is not yet ready.
static _Bool cliIsReady = false;


/*************************************************
 *          Tx Transmit CLI Byte Buffer          *
 *************************************************/
static void writeCharTocli_COMM_USB(EmbeddedCli *embeddedCli, char c) {
    uint8_t b = (uint8_t)c;
    while (CDC_Transmit_HS(&b, 1) == USBD_BUSY) {
    	vTaskDelay(1);
    }
}

static void writeCharTocli_COMM_UART(EmbeddedCli *embeddedCli, char c) {
    uint8_t b = c;
    UART_Driver_Write(UART4, b);
}

Std_ReturnType SystemCLI_Init() {
	/* Initialize the CLI configuration settings */

    // Initialize COMM USB CLI
    EmbeddedCliConfig *COMM_USB_Config = embeddedCliDefaultConfig();
    COMM_USB_Config->cliBuffer = COMM_USB_cliStaticBuffer;
    COMM_USB_Config->cliBufferSize = COMM_USB_CLI_BUFFER_SIZE;
    COMM_USB_Config->rxBufferSize = CLI_RX_BUFFER_SIZE;
    COMM_USB_Config->cmdBufferSize = CLI_CMD_BUFFER_SIZE;
    COMM_USB_Config->historyBufferSize = CLI_HISTORY_SIZE;
    COMM_USB_Config->maxBindingCount = CLI_MAX_BINDING_COUNT;
    COMM_USB_Config->enableAutoComplete = CLI_AUTO_COMPLETE;
    COMM_USB_Config->invitation = CLI_INITATION_COMM_USB;
    COMM_USB_Config->staticBindings = getCliStaticBindings();
    COMM_USB_Config->staticBindingCount = getCliStaticBindingCount();

    cli_COMM_USB = embeddedCliNew(COMM_USB_Config);
    if (cli_COMM_USB == NULL) {
        return E_ERROR;
    }
    cli_COMM_USB->writeChar = writeCharTocli_COMM_USB;

    // Initialize COMM UART CLi
    EmbeddedCliConfig *COMM_UART_config = embeddedCliDefaultConfig();
    COMM_UART_config->cliBuffer = COMM_UART_cliStaticBuffer;
    COMM_UART_config->cliBufferSize = COMM_UART_CLI_BUFFER_SIZE;
    COMM_UART_config->rxBufferSize = CLI_RX_BUFFER_SIZE;
    COMM_UART_config->cmdBufferSize = CLI_CMD_BUFFER_SIZE;
    COMM_UART_config->historyBufferSize = CLI_HISTORY_SIZE;
    COMM_UART_config->maxBindingCount = CLI_MAX_BINDING_COUNT;
    COMM_UART_config->enableAutoComplete = CLI_AUTO_COMPLETE;
    COMM_UART_config->invitation = CLI_INITATION_COMM_UART;
    COMM_UART_config->staticBindings = getCliStaticBindings();
    COMM_UART_config->staticBindingCount = getCliStaticBindingCount();

    cli_COMM_UART = embeddedCliNew(COMM_UART_config);
    if (cli_COMM_UART == NULL) {
        return E_ERROR;
    }
    cli_COMM_UART->writeChar = writeCharTocli_COMM_UART;

//	// Init the CLI with blank screen
//	onClearCLI(cli, NULL, NULL);

    // CLI has now been initialized, set bool to true to enable interrupts.
    cliIsReady = true;

    return E_OK;
}


/*************************************************
 *             Get CLI Pointers                  *
 *************************************************/

EmbeddedCli *get_COMM_USB_CliPointer() {
    return cli_COMM_USB;
}

EmbeddedCli *get_COMM_UART_CliPointer() {
    return cli_COMM_UART;
}

