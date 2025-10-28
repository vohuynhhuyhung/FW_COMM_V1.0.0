################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Util/HAL_Delay/HAL_delay.c 

OBJS += \
./Dev/Util/HAL_Delay/HAL_delay.o 

C_DEPS += \
./Dev/Util/HAL_Delay/HAL_delay.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Util/HAL_Delay/%.o Dev/Util/HAL_Delay/%.su Dev/Util/HAL_Delay/%.cyclo: ../Dev/Util/HAL_Delay/%.c Dev/Util/HAL_Delay/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=64000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DUSE_PWR_LDO_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-Util-2f-HAL_Delay

clean-Dev-2f-Util-2f-HAL_Delay:
	-$(RM) ./Dev/Util/HAL_Delay/HAL_delay.cyclo ./Dev/Util/HAL_Delay/HAL_delay.d ./Dev/Util/HAL_Delay/HAL_delay.o ./Dev/Util/HAL_Delay/HAL_delay.su

.PHONY: clean-Dev-2f-Util-2f-HAL_Delay

