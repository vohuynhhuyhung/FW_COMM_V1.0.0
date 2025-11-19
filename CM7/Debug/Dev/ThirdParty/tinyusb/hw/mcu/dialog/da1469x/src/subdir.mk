################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.c \
../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.c \
../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.c \
../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.c \
../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.c 

OBJS += \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.o \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.o \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.o \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.o \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.o 

C_DEPS += \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.d \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.d \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.d \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.d \
./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/%.o Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/%.su Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/%.cyclo: ../Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/%.c Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/stm32_fsdev" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/net" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/cdc" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/lib/rt-thread" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-tinyusb-2f-hw-2f-mcu-2f-dialog-2f-da1469x-2f-src

clean-Dev-2f-ThirdParty-2f-tinyusb-2f-hw-2f-mcu-2f-dialog-2f-da1469x-2f-src:
	-$(RM) ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.cyclo ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.d ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.o ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/da1469x_clock.su ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.cyclo ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.d ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.o ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_gpio.su ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.cyclo ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.d ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.o ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system.su ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.cyclo ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.d ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.o ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/hal_system_start.su ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.cyclo ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.d ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.o ./Dev/ThirdParty/tinyusb/hw/mcu/dialog/da1469x/src/system_da1469x.su

.PHONY: clean-Dev-2f-ThirdParty-2f-tinyusb-2f-hw-2f-mcu-2f-dialog-2f-da1469x-2f-src

