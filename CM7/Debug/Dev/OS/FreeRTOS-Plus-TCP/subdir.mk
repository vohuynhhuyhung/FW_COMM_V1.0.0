################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.c \
../Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.c 

OBJS += \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.o \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.o 

C_DEPS += \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.d \
./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/OS/FreeRTOS-Plus-TCP/%.o Dev/OS/FreeRTOS-Plus-TCP/%.su Dev/OS/FreeRTOS-Plus-TCP/%.cyclo: ../Dev/OS/FreeRTOS-Plus-TCP/%.c Dev/OS/FreeRTOS-Plus-TCP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/RNDIS" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/printf-master" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-OS-2f-FreeRTOS-2d-Plus-2d-TCP

clean-Dev-2f-OS-2f-FreeRTOS-2d-Plus-2d-TCP:
	-$(RM) ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_ARP.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_DNS.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_IP.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.su ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.cyclo ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.d ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.o ./Dev/OS/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.su

.PHONY: clean-Dev-2f-OS-2f-FreeRTOS-2d-Plus-2d-TCP

