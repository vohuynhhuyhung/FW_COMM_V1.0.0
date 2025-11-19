#ifndef TELNET_SERVER_H
#define TELNET_SERVER_H

#include "tcpip.h"
//#include "cmsis_os.h"
#include "FreeRTOS.h"
#include "task.h"
#include "FreeRTOS_IP.h"
#include "FreeRTOS_Sockets.h"
#include <string.h>
#include <stdio.h>


void telnet_server_init();

#endif /* TELNET_SERVER_H */
