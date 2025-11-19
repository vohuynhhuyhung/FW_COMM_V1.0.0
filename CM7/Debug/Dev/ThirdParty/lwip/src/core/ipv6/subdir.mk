################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/ethip6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/icmp6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/inet6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/ip6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.c \
../Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.c \
../Dev/ThirdParty/lwip/src/core/ipv6/mld6.c \
../Dev/ThirdParty/lwip/src/core/ipv6/nd6.c 

OBJS += \
./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/inet6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.o \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.o \
./Dev/ThirdParty/lwip/src/core/ipv6/mld6.o \
./Dev/ThirdParty/lwip/src/core/ipv6/nd6.o 

C_DEPS += \
./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/inet6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.d \
./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.d \
./Dev/ThirdParty/lwip/src/core/ipv6/mld6.d \
./Dev/ThirdParty/lwip/src/core/ipv6/nd6.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/lwip/src/core/ipv6/%.o Dev/ThirdParty/lwip/src/core/ipv6/%.su Dev/ThirdParty/lwip/src/core/ipv6/%.cyclo: ../Dev/ThirdParty/lwip/src/core/ipv6/%.c Dev/ThirdParty/lwip/src/core/ipv6/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/stm32_fsdev" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable/st" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/portable" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/typec" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/net" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src/class/cdc" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/tinyusb/lib/rt-thread" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/lwip" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/netif" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip/src/include/compat" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core-2f-ipv6

clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core-2f-ipv6:
	-$(RM) ./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.d ./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.o ./Dev/ThirdParty/lwip/src/core/ipv6/dhcp6.su ./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.d ./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.o ./Dev/ThirdParty/lwip/src/core/ipv6/ethip6.su ./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.d ./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.o ./Dev/ThirdParty/lwip/src/core/ipv6/icmp6.su ./Dev/ThirdParty/lwip/src/core/ipv6/inet6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/inet6.d ./Dev/ThirdParty/lwip/src/core/ipv6/inet6.o ./Dev/ThirdParty/lwip/src/core/ipv6/inet6.su ./Dev/ThirdParty/lwip/src/core/ipv6/ip6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/ip6.d ./Dev/ThirdParty/lwip/src/core/ipv6/ip6.o ./Dev/ThirdParty/lwip/src/core/ipv6/ip6.su ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.d ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.o ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_addr.su ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.d ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.o ./Dev/ThirdParty/lwip/src/core/ipv6/ip6_frag.su ./Dev/ThirdParty/lwip/src/core/ipv6/mld6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/mld6.d ./Dev/ThirdParty/lwip/src/core/ipv6/mld6.o ./Dev/ThirdParty/lwip/src/core/ipv6/mld6.su ./Dev/ThirdParty/lwip/src/core/ipv6/nd6.cyclo ./Dev/ThirdParty/lwip/src/core/ipv6/nd6.d ./Dev/ThirdParty/lwip/src/core/ipv6/nd6.o ./Dev/ThirdParty/lwip/src/core/ipv6/nd6.su

.PHONY: clean-Dev-2f-ThirdParty-2f-lwip-2f-src-2f-core-2f-ipv6

