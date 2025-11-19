################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/lwip/src/core/altcp.c \
../Dev/ThirdParty/lwip/src/core/altcp_alloc.c \
../Dev/ThirdParty/lwip/src/core/altcp_tcp.c \
../Dev/ThirdParty/lwip/src/core/def.c \
../Dev/ThirdParty/lwip/src/core/dns.c \
../Dev/ThirdParty/lwip/src/core/inet_chksum.c \
../Dev/ThirdParty/lwip/src/core/init.c \
../Dev/ThirdParty/lwip/src/core/ip.c \
../Dev/ThirdParty/lwip/src/core/mem.c \
../Dev/ThirdParty/lwip/src/core/memp.c \
../Dev/ThirdParty/lwip/src/core/netif.c \
../Dev/ThirdParty/lwip/src/core/pbuf.c \
../Dev/ThirdParty/lwip/src/core/raw.c \
../Dev/ThirdParty/lwip/src/core/stats.c \
../Dev/ThirdParty/lwip/src/core/sys.c \
../Dev/ThirdParty/lwip/src/core/tcp.c \
../Dev/ThirdParty/lwip/src/core/tcp_in.c \
../Dev/ThirdParty/lwip/src/core/tcp_out.c \
../Dev/ThirdParty/lwip/src/core/timeouts.c \
../Dev/ThirdParty/lwip/src/core/udp.c 

OBJS += \
./Dev/ThirdParty/lwip/src/core/altcp.o \
./Dev/ThirdParty/lwip/src/core/altcp_alloc.o \
./Dev/ThirdParty/lwip/src/core/altcp_tcp.o \
./Dev/ThirdParty/lwip/src/core/def.o \
./Dev/ThirdParty/lwip/src/core/dns.o \
./Dev/ThirdParty/lwip/src/core/inet_chksum.o \
./Dev/ThirdParty/lwip/src/core/init.o \
./Dev/ThirdParty/lwip/src/core/ip.o \
./Dev/ThirdParty/lwip/src/core/mem.o \
./Dev/ThirdParty/lwip/src/core/memp.o \
./Dev/ThirdParty/lwip/src/core/netif.o \
./Dev/ThirdParty/lwip/src/core/pbuf.o \
./Dev/ThirdParty/lwip/src/core/raw.o \
./Dev/ThirdParty/lwip/src/core/stats.o \
./Dev/ThirdParty/lwip/src/core/sys.o \
./Dev/ThirdParty/lwip/src/core/tcp.o \
./Dev/ThirdParty/lwip/src/core/tcp_in.o \
./Dev/ThirdParty/lwip/src/core/tcp_out.o \
./Dev/ThirdParty/lwip/src/core/timeouts.o \
./Dev/ThirdParty/lwip/src/core/udp.o 

C_DEPS += \
./Dev/ThirdParty/lwip/src/core/altcp.d \
./Dev/ThirdParty/lwip/src/core/altcp_alloc.d \
./Dev/ThirdParty/lwip/src/core/altcp_tcp.d \
./Dev/ThirdParty/lwip/src/core/def.d \
./Dev/ThirdParty/lwip/src/core/dns.d \
./Dev/ThirdParty/lwip/src/core/inet_chksum.d \
./Dev/ThirdParty/lwip/src/core/init.d \
./Dev/ThirdParty/lwip/src/core/ip.d \
./Dev/ThirdParty/lwip/src/core/mem.d \
./Dev/ThirdParty/lwip/src/core/memp.d \
./Dev/ThirdParty/lwip/src/core/netif.d \
./Dev/ThirdParty/lwip/src/core/pbuf.d \
./Dev/ThirdParty/lwip/src/core/raw.d \
./Dev/ThirdParty/lwip/src/core/stats.d \
./Dev/ThirdParty/lwip/src/core/sys.d \
./Dev/ThirdParty/lwip/src/core/tcp.d \
./Dev/ThirdParty/lwip/src/core/tcp_in.d \
./Dev/ThirdParty/lwip/src/core/tcp_out.d \
./Dev/ThirdParty/lwip/src/core/timeouts.d \
./Dev/ThirdParty/lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/lwip/src/core/%.o Dev/ThirdParty/lwip/src/core/%.su Dev/ThirdParty/lwip/src/core/%.cyclo: ../Dev/ThirdParty/lwip/src/core/%.c Dev/ThirdParty/lwip/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/stm32_fsdev" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/net" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/cdc" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/lib/rt-thread" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/lwip" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/netif" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/compat" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core

clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core:
	-$(RM) ./Dev/ThirdParty/lwip/src/core/altcp.cyclo ./Dev/ThirdParty/lwip/src/core/altcp.d ./Dev/ThirdParty/lwip/src/core/altcp.o ./Dev/ThirdParty/lwip/src/core/altcp.su ./Dev/ThirdParty/lwip/src/core/altcp_alloc.cyclo ./Dev/ThirdParty/lwip/src/core/altcp_alloc.d ./Dev/ThirdParty/lwip/src/core/altcp_alloc.o ./Dev/ThirdParty/lwip/src/core/altcp_alloc.su ./Dev/ThirdParty/lwip/src/core/altcp_tcp.cyclo ./Dev/ThirdParty/lwip/src/core/altcp_tcp.d ./Dev/ThirdParty/lwip/src/core/altcp_tcp.o ./Dev/ThirdParty/lwip/src/core/altcp_tcp.su ./Dev/ThirdParty/lwip/src/core/def.cyclo ./Dev/ThirdParty/lwip/src/core/def.d ./Dev/ThirdParty/lwip/src/core/def.o ./Dev/ThirdParty/lwip/src/core/def.su ./Dev/ThirdParty/lwip/src/core/dns.cyclo ./Dev/ThirdParty/lwip/src/core/dns.d ./Dev/ThirdParty/lwip/src/core/dns.o ./Dev/ThirdParty/lwip/src/core/dns.su ./Dev/ThirdParty/lwip/src/core/inet_chksum.cyclo ./Dev/ThirdParty/lwip/src/core/inet_chksum.d ./Dev/ThirdParty/lwip/src/core/inet_chksum.o ./Dev/ThirdParty/lwip/src/core/inet_chksum.su ./Dev/ThirdParty/lwip/src/core/init.cyclo ./Dev/ThirdParty/lwip/src/core/init.d ./Dev/ThirdParty/lwip/src/core/init.o ./Dev/ThirdParty/lwip/src/core/init.su ./Dev/ThirdParty/lwip/src/core/ip.cyclo ./Dev/ThirdParty/lwip/src/core/ip.d ./Dev/ThirdParty/lwip/src/core/ip.o ./Dev/ThirdParty/lwip/src/core/ip.su ./Dev/ThirdParty/lwip/src/core/mem.cyclo ./Dev/ThirdParty/lwip/src/core/mem.d ./Dev/ThirdParty/lwip/src/core/mem.o ./Dev/ThirdParty/lwip/src/core/mem.su ./Dev/ThirdParty/lwip/src/core/memp.cyclo ./Dev/ThirdParty/lwip/src/core/memp.d ./Dev/ThirdParty/lwip/src/core/memp.o ./Dev/ThirdParty/lwip/src/core/memp.su ./Dev/ThirdParty/lwip/src/core/netif.cyclo ./Dev/ThirdParty/lwip/src/core/netif.d ./Dev/ThirdParty/lwip/src/core/netif.o ./Dev/ThirdParty/lwip/src/core/netif.su ./Dev/ThirdParty/lwip/src/core/pbuf.cyclo ./Dev/ThirdParty/lwip/src/core/pbuf.d ./Dev/ThirdParty/lwip/src/core/pbuf.o ./Dev/ThirdParty/lwip/src/core/pbuf.su ./Dev/ThirdParty/lwip/src/core/raw.cyclo ./Dev/ThirdParty/lwip/src/core/raw.d ./Dev/ThirdParty/lwip/src/core/raw.o ./Dev/ThirdParty/lwip/src/core/raw.su ./Dev/ThirdParty/lwip/src/core/stats.cyclo ./Dev/ThirdParty/lwip/src/core/stats.d ./Dev/ThirdParty/lwip/src/core/stats.o ./Dev/ThirdParty/lwip/src/core/stats.su ./Dev/ThirdParty/lwip/src/core/sys.cyclo ./Dev/ThirdParty/lwip/src/core/sys.d ./Dev/ThirdParty/lwip/src/core/sys.o ./Dev/ThirdParty/lwip/src/core/sys.su ./Dev/ThirdParty/lwip/src/core/tcp.cyclo ./Dev/ThirdParty/lwip/src/core/tcp.d ./Dev/ThirdParty/lwip/src/core/tcp.o ./Dev/ThirdParty/lwip/src/core/tcp.su ./Dev/ThirdParty/lwip/src/core/tcp_in.cyclo ./Dev/ThirdParty/lwip/src/core/tcp_in.d ./Dev/ThirdParty/lwip/src/core/tcp_in.o ./Dev/ThirdParty/lwip/src/core/tcp_in.su ./Dev/ThirdParty/lwip/src/core/tcp_out.cyclo ./Dev/ThirdParty/lwip/src/core/tcp_out.d ./Dev/ThirdParty/lwip/src/core/tcp_out.o ./Dev/ThirdParty/lwip/src/core/tcp_out.su ./Dev/ThirdParty/lwip/src/core/timeouts.cyclo ./Dev/ThirdParty/lwip/src/core/timeouts.d ./Dev/ThirdParty/lwip/src/core/timeouts.o ./Dev/ThirdParty/lwip/src/core/timeouts.su ./Dev/ThirdParty/lwip/src/core/udp.cyclo ./Dev/ThirdParty/lwip/src/core/udp.d ./Dev/ThirdParty/lwip/src/core/udp.o ./Dev/ThirdParty/lwip/src/core/udp.su

.PHONY: clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core

