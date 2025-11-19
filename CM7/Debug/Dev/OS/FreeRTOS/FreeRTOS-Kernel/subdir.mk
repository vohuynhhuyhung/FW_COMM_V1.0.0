################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.c \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.c 

OBJS += \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.o \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.o 

C_DEPS += \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.d \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/OS/FreeRTOS/FreeRTOS-Kernel/%.o Dev/OS/FreeRTOS/FreeRTOS-Kernel/%.su Dev/OS/FreeRTOS/FreeRTOS-Kernel/%.cyclo: ../Dev/OS/FreeRTOS/FreeRTOS-Kernel/%.c Dev/OS/FreeRTOS/FreeRTOS-Kernel/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/RNDIS" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/printf-master" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable/Compiler" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools/tcp_utilities" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS-Plus-TCP/tools" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel:
	-$(RM) ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/croutine.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/event_groups.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/list.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/queue.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/tasks.su ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/timers.su

.PHONY: clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

