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



/*************************************************
 *                Private typedef                 *
 *************************************************/

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
 *                Command Define                 *
 *************************************************/
static void CMD_Clear_CLI(EmbeddedCli *cli, char *args, void *context);
static void CMD_Reset(EmbeddedCli *cli, char *args, void *context);

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
