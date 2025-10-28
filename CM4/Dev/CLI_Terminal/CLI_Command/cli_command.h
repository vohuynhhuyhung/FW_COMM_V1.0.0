/*
 * cli_command.h
 *
 *  Created on: Apr 1, 2025
 *      Author: HTSANG
 */

#ifndef CLI_COMMAND_H_
#define CLI_COMMAND_H_

#include "embedded_cli.h"
#include "cli_setup.h"
#include "main.h"
#include <stdio.h>

const CliCommandBinding *getCliStaticBindings(void) ;
uint16_t getCliStaticBindingCount(void);

#endif /* CLI_COMMAND_H_ */
