################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.c \
../Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.c \
../Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.c 

OBJS += \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.o \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.o \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.o 

C_DEPS += \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.d \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.d \
./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/libcsp/src/drivers/usart/%.o Dev/ThirdParty/libcsp/src/drivers/usart/%.su Dev/ThirdParty/libcsp/src/drivers/usart/%.cyclo: ../Dev/ThirdParty/libcsp/src/drivers/usart/%.c Dev/ThirdParty/libcsp/src/drivers/usart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/Define" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/STworkspace/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/STworkspace/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/STworkspace/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-drivers-2f-usart

clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-drivers-2f-usart:
	-$(RM) ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.cyclo ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.d ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.o ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_kiss.su ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.cyclo ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.d ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.o ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_linux.su ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.cyclo ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.d ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.o ./Dev/ThirdParty/libcsp/src/drivers/usart/usart_windows.su

.PHONY: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-drivers-2f-usart

