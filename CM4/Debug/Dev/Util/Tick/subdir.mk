################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Util/Tick/tick.c 

OBJS += \
./Dev/Util/Tick/tick.o 

C_DEPS += \
./Dev/Util/Tick/tick.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Util/Tick/%.o Dev/Util/Tick/%.su Dev/Util/Tick/%.cyclo: ../Dev/Util/Tick/%.c Dev/Util/Tick/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/STworkspace/COMM_HW100/CM4/Dev/BSP/SPI" -I"D:/STworkspace/COMM_HW100/CM4/Dev/Util/Define" -I"D:/STworkspace/COMM_HW100/CM4/Dev/Util/RingBuffer" -I"D:/STworkspace/COMM_HW100/CM4/Dev/Util/Tick" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-Util-2f-Tick

clean-Dev-2f-Util-2f-Tick:
	-$(RM) ./Dev/Util/Tick/tick.cyclo ./Dev/Util/Tick/tick.d ./Dev/Util/Tick/tick.o ./Dev/Util/Tick/tick.su

.PHONY: clean-Dev-2f-Util-2f-Tick

