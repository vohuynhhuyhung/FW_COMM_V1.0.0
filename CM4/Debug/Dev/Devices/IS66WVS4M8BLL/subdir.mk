################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.c 

OBJS += \
./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.o 

C_DEPS += \
./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/IS66WVS4M8BLL/%.o Dev/Devices/IS66WVS4M8BLL/%.su Dev/Devices/IS66WVS4M8BLL/%.cyclo: ../Dev/Devices/IS66WVS4M8BLL/%.c Dev/Devices/IS66WVS4M8BLL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM4/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM4/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM4/Dev/Util/RingBuffer" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM4/Dev/Util/Tick" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM4/Dev/Devices/IS66WVS4M8BLL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-Devices-2f-IS66WVS4M8BLL

clean-Dev-2f-Devices-2f-IS66WVS4M8BLL:
	-$(RM) ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.cyclo ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.d ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.o ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.su

.PHONY: clean-Dev-2f-Devices-2f-IS66WVS4M8BLL

