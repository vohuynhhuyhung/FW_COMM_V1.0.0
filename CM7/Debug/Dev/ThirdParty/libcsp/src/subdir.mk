################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/libcsp/src/csp_bridge.c \
../Dev/ThirdParty/libcsp/src/csp_buffer.c \
../Dev/ThirdParty/libcsp/src/csp_conn.c \
../Dev/ThirdParty/libcsp/src/csp_crc32.c \
../Dev/ThirdParty/libcsp/src/csp_debug.c \
../Dev/ThirdParty/libcsp/src/csp_dedup.c \
../Dev/ThirdParty/libcsp/src/csp_endian.c \
../Dev/ThirdParty/libcsp/src/csp_hex_dump.c \
../Dev/ThirdParty/libcsp/src/csp_iflist.c \
../Dev/ThirdParty/libcsp/src/csp_init.c \
../Dev/ThirdParty/libcsp/src/csp_io.c \
../Dev/ThirdParty/libcsp/src/csp_port.c \
../Dev/ThirdParty/libcsp/src/csp_promisc.c \
../Dev/ThirdParty/libcsp/src/csp_qfifo.c \
../Dev/ThirdParty/libcsp/src/csp_route.c \
../Dev/ThirdParty/libcsp/src/csp_service_handler.c \
../Dev/ThirdParty/libcsp/src/csp_services.c \
../Dev/ThirdParty/libcsp/src/csp_sfp.c 

OBJS += \
./Dev/ThirdParty/libcsp/src/csp_bridge.o \
./Dev/ThirdParty/libcsp/src/csp_buffer.o \
./Dev/ThirdParty/libcsp/src/csp_conn.o \
./Dev/ThirdParty/libcsp/src/csp_crc32.o \
./Dev/ThirdParty/libcsp/src/csp_debug.o \
./Dev/ThirdParty/libcsp/src/csp_dedup.o \
./Dev/ThirdParty/libcsp/src/csp_endian.o \
./Dev/ThirdParty/libcsp/src/csp_hex_dump.o \
./Dev/ThirdParty/libcsp/src/csp_iflist.o \
./Dev/ThirdParty/libcsp/src/csp_init.o \
./Dev/ThirdParty/libcsp/src/csp_io.o \
./Dev/ThirdParty/libcsp/src/csp_port.o \
./Dev/ThirdParty/libcsp/src/csp_promisc.o \
./Dev/ThirdParty/libcsp/src/csp_qfifo.o \
./Dev/ThirdParty/libcsp/src/csp_route.o \
./Dev/ThirdParty/libcsp/src/csp_service_handler.o \
./Dev/ThirdParty/libcsp/src/csp_services.o \
./Dev/ThirdParty/libcsp/src/csp_sfp.o 

C_DEPS += \
./Dev/ThirdParty/libcsp/src/csp_bridge.d \
./Dev/ThirdParty/libcsp/src/csp_buffer.d \
./Dev/ThirdParty/libcsp/src/csp_conn.d \
./Dev/ThirdParty/libcsp/src/csp_crc32.d \
./Dev/ThirdParty/libcsp/src/csp_debug.d \
./Dev/ThirdParty/libcsp/src/csp_dedup.d \
./Dev/ThirdParty/libcsp/src/csp_endian.d \
./Dev/ThirdParty/libcsp/src/csp_hex_dump.d \
./Dev/ThirdParty/libcsp/src/csp_iflist.d \
./Dev/ThirdParty/libcsp/src/csp_init.d \
./Dev/ThirdParty/libcsp/src/csp_io.d \
./Dev/ThirdParty/libcsp/src/csp_port.d \
./Dev/ThirdParty/libcsp/src/csp_promisc.d \
./Dev/ThirdParty/libcsp/src/csp_qfifo.d \
./Dev/ThirdParty/libcsp/src/csp_route.d \
./Dev/ThirdParty/libcsp/src/csp_service_handler.d \
./Dev/ThirdParty/libcsp/src/csp_services.d \
./Dev/ThirdParty/libcsp/src/csp_sfp.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/libcsp/src/%.o Dev/ThirdParty/libcsp/src/%.su Dev/ThirdParty/libcsp/src/%.cyclo: ../Dev/ThirdParty/libcsp/src/%.c Dev/ThirdParty/libcsp/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/RNDIS" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/printf-master" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src

clean-Dev-2f-ThirdParty-2f-libcsp-2f-src:
	-$(RM) ./Dev/ThirdParty/libcsp/src/csp_bridge.cyclo ./Dev/ThirdParty/libcsp/src/csp_bridge.d ./Dev/ThirdParty/libcsp/src/csp_bridge.o ./Dev/ThirdParty/libcsp/src/csp_bridge.su ./Dev/ThirdParty/libcsp/src/csp_buffer.cyclo ./Dev/ThirdParty/libcsp/src/csp_buffer.d ./Dev/ThirdParty/libcsp/src/csp_buffer.o ./Dev/ThirdParty/libcsp/src/csp_buffer.su ./Dev/ThirdParty/libcsp/src/csp_conn.cyclo ./Dev/ThirdParty/libcsp/src/csp_conn.d ./Dev/ThirdParty/libcsp/src/csp_conn.o ./Dev/ThirdParty/libcsp/src/csp_conn.su ./Dev/ThirdParty/libcsp/src/csp_crc32.cyclo ./Dev/ThirdParty/libcsp/src/csp_crc32.d ./Dev/ThirdParty/libcsp/src/csp_crc32.o ./Dev/ThirdParty/libcsp/src/csp_crc32.su ./Dev/ThirdParty/libcsp/src/csp_debug.cyclo ./Dev/ThirdParty/libcsp/src/csp_debug.d ./Dev/ThirdParty/libcsp/src/csp_debug.o ./Dev/ThirdParty/libcsp/src/csp_debug.su ./Dev/ThirdParty/libcsp/src/csp_dedup.cyclo ./Dev/ThirdParty/libcsp/src/csp_dedup.d ./Dev/ThirdParty/libcsp/src/csp_dedup.o ./Dev/ThirdParty/libcsp/src/csp_dedup.su ./Dev/ThirdParty/libcsp/src/csp_endian.cyclo ./Dev/ThirdParty/libcsp/src/csp_endian.d ./Dev/ThirdParty/libcsp/src/csp_endian.o ./Dev/ThirdParty/libcsp/src/csp_endian.su ./Dev/ThirdParty/libcsp/src/csp_hex_dump.cyclo ./Dev/ThirdParty/libcsp/src/csp_hex_dump.d ./Dev/ThirdParty/libcsp/src/csp_hex_dump.o ./Dev/ThirdParty/libcsp/src/csp_hex_dump.su ./Dev/ThirdParty/libcsp/src/csp_iflist.cyclo ./Dev/ThirdParty/libcsp/src/csp_iflist.d ./Dev/ThirdParty/libcsp/src/csp_iflist.o ./Dev/ThirdParty/libcsp/src/csp_iflist.su ./Dev/ThirdParty/libcsp/src/csp_init.cyclo ./Dev/ThirdParty/libcsp/src/csp_init.d ./Dev/ThirdParty/libcsp/src/csp_init.o ./Dev/ThirdParty/libcsp/src/csp_init.su ./Dev/ThirdParty/libcsp/src/csp_io.cyclo ./Dev/ThirdParty/libcsp/src/csp_io.d ./Dev/ThirdParty/libcsp/src/csp_io.o ./Dev/ThirdParty/libcsp/src/csp_io.su ./Dev/ThirdParty/libcsp/src/csp_port.cyclo ./Dev/ThirdParty/libcsp/src/csp_port.d ./Dev/ThirdParty/libcsp/src/csp_port.o ./Dev/ThirdParty/libcsp/src/csp_port.su ./Dev/ThirdParty/libcsp/src/csp_promisc.cyclo ./Dev/ThirdParty/libcsp/src/csp_promisc.d ./Dev/ThirdParty/libcsp/src/csp_promisc.o ./Dev/ThirdParty/libcsp/src/csp_promisc.su ./Dev/ThirdParty/libcsp/src/csp_qfifo.cyclo ./Dev/ThirdParty/libcsp/src/csp_qfifo.d ./Dev/ThirdParty/libcsp/src/csp_qfifo.o ./Dev/ThirdParty/libcsp/src/csp_qfifo.su ./Dev/ThirdParty/libcsp/src/csp_route.cyclo ./Dev/ThirdParty/libcsp/src/csp_route.d ./Dev/ThirdParty/libcsp/src/csp_route.o ./Dev/ThirdParty/libcsp/src/csp_route.su ./Dev/ThirdParty/libcsp/src/csp_service_handler.cyclo ./Dev/ThirdParty/libcsp/src/csp_service_handler.d ./Dev/ThirdParty/libcsp/src/csp_service_handler.o ./Dev/ThirdParty/libcsp/src/csp_service_handler.su ./Dev/ThirdParty/libcsp/src/csp_services.cyclo ./Dev/ThirdParty/libcsp/src/csp_services.d ./Dev/ThirdParty/libcsp/src/csp_services.o ./Dev/ThirdParty/libcsp/src/csp_services.su ./Dev/ThirdParty/libcsp/src/csp_sfp.cyclo ./Dev/ThirdParty/libcsp/src/csp_sfp.d ./Dev/ThirdParty/libcsp/src/csp_sfp.o ./Dev/ThirdParty/libcsp/src/csp_sfp.su

.PHONY: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src

