#include "telnet.h"
#include "tcpip.h"
#include "FreeRTOS_sockets.h"
#include <string.h>
#include <stdio.h>

#define TELNET_PORT 23
#define BUFFER_SIZE 256


static void telnet_server_task(void *pvParameters) {
    Socket_t server_fd, client_fd;
    struct freertos_sockaddr server_addr, client_addr;
    uint32_t addr_len = sizeof(client_addr);
    BaseType_t status;
    char rx_buffer[BUFFER_SIZE];
    int rx_index = 0;

    //Tạo socket TCP
    server_fd = FreeRTOS_socket(FREERTOS_AF_INET, FREERTOS_SOCK_STREAM, FREERTOS_IPPROTO_TCP);
    if (server_fd == FREERTOS_INVALID_SOCKET) {
        printf("Error: Can not create socket!\n");
        vTaskDelete(NULL);
    }

    //Cấu hình địa chỉ server
    server_addr.sin_port = FreeRTOS_htons(23);
    server_addr.sin_addr = FreeRTOS_inet_addr_quick(192, 168, 2, 1);

    // Bind socket vào cổng 23
    status = FreeRTOS_bind(server_fd, &server_addr, sizeof(server_addr));
    if (status != 0) {
        printf("Error: Can not bind socket!\n");
        FreeRTOS_closesocket(server_fd);
        vTaskDelete(NULL);
    }

    // Đặt socket ở chế độ lắng nghe (listen)
    FreeRTOS_listen(server_fd, 5);

    // Vòng lặp chấp nhận kết nối
    while (1) {
        client_fd = FreeRTOS_accept(server_fd, &client_addr, &addr_len);
        if (client_fd != FREERTOS_INVALID_SOCKET) {
            printf("Client Connected!\n");

            // Gửi tin nhắn chào mừng
            const char *msg = "Welcome to STM32 Telnet Server!\r\n";
            FreeRTOS_send(client_fd, msg, strlen(msg), 0);

            //Giữ kết nối để xử lý dữ liệu nhập vào
            rx_index = 0;
            memset(rx_buffer, 0, BUFFER_SIZE);

            while (1) {
                char ch;
                status = FreeRTOS_recv(client_fd, &ch, 1, 0);

                if (status > 0) {
                    // Kiểm tra nếu là Enter thì gửi phản hồi
                    if ( ch == '\n') {
                    	ch = 'NULL';
                        rx_buffer[rx_index] = '\0';  // Kết thúc chuỗi
                        printf("Received: %s\n", rx_buffer);

                        // Gửi lại phản hồi
                        char response[BUFFER_SIZE + 20];
                        snprintf(response, sizeof(response), "Received: %s\r\n", rx_buffer);
                        FreeRTOS_send(client_fd, response, strlen(response), 0);

                        // Reset buffer
                        rx_index = 0;
                        memset(rx_buffer, 0, BUFFER_SIZE);
                    } else {
                        if (rx_index < BUFFER_SIZE - 1) {
                            rx_buffer[rx_index++] = ch;
                        }
                    }
                } else {
                    printf("Client Closed!\n");
                    break;
                }
            }

            // Đóng kết nối client sau khi hoàn tất
            FreeRTOS_closesocket(client_fd);
        }
    }
}


void telnet_server_init(void) {
    BaseType_t ret;

    ret = xTaskCreate(
        telnet_server_task,       // Task function
        "TELNET",                 // Task name
        1024 / sizeof(StackType_t),  // Stack size in words, not bytes
        NULL,                     // Task parameters
        tskIDLE_PRIORITY + 2,     // Priority (equivalent to osPriorityNormal)
        NULL                      // Task handle (optional)
    );

    if (ret != pdPASS) {
        // Optional: handle error (e.g. print, assert)
    }
}

