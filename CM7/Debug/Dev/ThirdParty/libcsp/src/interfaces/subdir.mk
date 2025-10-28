################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.c \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.c \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.c \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.c \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.c \
../Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.c 

OBJS += \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.o \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.o \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.o \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.o \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.o \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.o 

C_DEPS += \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.d \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.d \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.d \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.d \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.d \
./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/libcsp/src/interfaces/%.o Dev/ThirdParty/libcsp/src/interfaces/%.su Dev/ThirdParty/libcsp/src/interfaces/%.cyclo: ../Dev/ThirdParty/libcsp/src/interfaces/%.c Dev/ThirdParty/libcsp/src/interfaces/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-interfaces

clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-interfaces:
	-$(RM) ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can.su ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_can_pbuf.su ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_i2c.su ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_kiss.su ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_lo.su ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.cyclo ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.d ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.o ./Dev/ThirdParty/libcsp/src/interfaces/csp_if_zmqhub.su

.PHONY: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-interfaces

