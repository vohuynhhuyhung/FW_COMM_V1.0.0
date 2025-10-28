################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Driver/USB_CDC/cdc_driver.c 

OBJS += \
./Dev/Driver/USB_CDC/cdc_driver.o 

C_DEPS += \
./Dev/Driver/USB_CDC/cdc_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Driver/USB_CDC/%.o Dev/Driver/USB_CDC/%.su Dev/Driver/USB_CDC/%.cyclo: ../Dev/Driver/USB_CDC/%.c Dev/Driver/USB_CDC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/STworkspace/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/STworkspace/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/Define" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/STworkspace/COMM_HW100/CM7/Dev/Driver/USB_CDC" -I"D:/STworkspace/COMM_HW100/CM7/Dev/Driver/UART_DMA" -I"D:/STworkspace/COMM_HW100/CM7/Dev/BSP/UART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-Driver-2f-USB_CDC

clean-Dev-2f-Driver-2f-USB_CDC:
	-$(RM) ./Dev/Driver/USB_CDC/cdc_driver.cyclo ./Dev/Driver/USB_CDC/cdc_driver.d ./Dev/Driver/USB_CDC/cdc_driver.o ./Dev/Driver/USB_CDC/cdc_driver.su

.PHONY: clean-Dev-2f-Driver-2f-USB_CDC

