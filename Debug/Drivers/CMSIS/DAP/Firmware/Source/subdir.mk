################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DAP/Firmware/Source/DAP.c \
../Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.c \
../Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.c \
../Drivers/CMSIS/DAP/Firmware/Source/SWO.c \
../Drivers/CMSIS/DAP/Firmware/Source/SW_DP.c \
../Drivers/CMSIS/DAP/Firmware/Source/UART.c 

OBJS += \
./Drivers/CMSIS/DAP/Firmware/Source/DAP.o \
./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.o \
./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.o \
./Drivers/CMSIS/DAP/Firmware/Source/SWO.o \
./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.o \
./Drivers/CMSIS/DAP/Firmware/Source/UART.o 

C_DEPS += \
./Drivers/CMSIS/DAP/Firmware/Source/DAP.d \
./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.d \
./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.d \
./Drivers/CMSIS/DAP/Firmware/Source/SWO.d \
./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.d \
./Drivers/CMSIS/DAP/Firmware/Source/UART.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DAP/Firmware/Source/%.o Drivers/CMSIS/DAP/Firmware/Source/%.su Drivers/CMSIS/DAP/Firmware/Source/%.cyclo: ../Drivers/CMSIS/DAP/Firmware/Source/%.c Drivers/CMSIS/DAP/Firmware/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -DTX_INCLUDE_USER_DEFINE_FILE -DTX_SINGLE_MODE_NON_SECURE=1 -DNX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Device/ST/STM32U5xx/Include -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/My_Workspace/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/ethernet" -I../AZURE_RTOS/App -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/ports/cortex_m33/gnu/inc -I../NetXDuo/App -I../NetXDuo/Target -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/ports/cortex_m33/gnu/inc -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/template/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Inc" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DAP-2f-Firmware-2f-Source

clean-Drivers-2f-CMSIS-2f-DAP-2f-Firmware-2f-Source:
	-$(RM) ./Drivers/CMSIS/DAP/Firmware/Source/DAP.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/DAP.d ./Drivers/CMSIS/DAP/Firmware/Source/DAP.o ./Drivers/CMSIS/DAP/Firmware/Source/DAP.su ./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.d ./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.o ./Drivers/CMSIS/DAP/Firmware/Source/DAP_vendor.su ./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.d ./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.o ./Drivers/CMSIS/DAP/Firmware/Source/JTAG_DP.su ./Drivers/CMSIS/DAP/Firmware/Source/SWO.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/SWO.d ./Drivers/CMSIS/DAP/Firmware/Source/SWO.o ./Drivers/CMSIS/DAP/Firmware/Source/SWO.su ./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.d ./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.o ./Drivers/CMSIS/DAP/Firmware/Source/SW_DP.su ./Drivers/CMSIS/DAP/Firmware/Source/UART.cyclo ./Drivers/CMSIS/DAP/Firmware/Source/UART.d ./Drivers/CMSIS/DAP/Firmware/Source/UART.o ./Drivers/CMSIS/DAP/Firmware/Source/UART.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DAP-2f-Firmware-2f-Source

