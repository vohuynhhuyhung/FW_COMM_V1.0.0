################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_system.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.c \
../Dev/ThirdParty/libcsp/src/arch/windows/csp_time.c \
../Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.c 

OBJS += \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.o \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.o \
./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.o 

C_DEPS += \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.d \
./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.d \
./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/libcsp/src/arch/windows/%.o Dev/ThirdParty/libcsp/src/arch/windows/%.su Dev/ThirdParty/libcsp/src/arch/windows/%.cyclo: ../Dev/ThirdParty/libcsp/src/arch/windows/%.c Dev/ThirdParty/libcsp/src/arch/windows/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/Define" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/STworkspace/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/STworkspace/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-arch-2f-windows

clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-arch-2f-windows:
	-$(RM) ./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_clock.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_malloc.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_queue.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_semaphore.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_system.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_thread.su ./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.d ./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.o ./Dev/ThirdParty/libcsp/src/arch/windows/csp_time.su ./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.cyclo ./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.d ./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.o ./Dev/ThirdParty/libcsp/src/arch/windows/windows_queue.su

.PHONY: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-arch-2f-windows

