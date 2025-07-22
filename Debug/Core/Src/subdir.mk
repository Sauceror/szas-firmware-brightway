################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/app_threadx.c \
../Core/Src/crc.c \
../Core/Src/ec25.c \
../Core/Src/gpdma.c \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/icache.c \
../Core/Src/main.c \
../Core/Src/memorymap.c \
../Core/Src/stm32u5xx_hal_msp.c \
../Core/Src/stm32u5xx_hal_timebase_tim.c \
../Core/Src/stm32u5xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32u5xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c 

S_UPPER_SRCS += \
../Core/Src/tx_initialize_low_level.S 

OBJS += \
./Core/Src/adc.o \
./Core/Src/app_threadx.o \
./Core/Src/crc.o \
./Core/Src/ec25.o \
./Core/Src/gpdma.o \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/icache.o \
./Core/Src/main.o \
./Core/Src/memorymap.o \
./Core/Src/stm32u5xx_hal_msp.o \
./Core/Src/stm32u5xx_hal_timebase_tim.o \
./Core/Src/stm32u5xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32u5xx.o \
./Core/Src/tim.o \
./Core/Src/tx_initialize_low_level.o \
./Core/Src/usart.o 

S_UPPER_DEPS += \
./Core/Src/tx_initialize_low_level.d 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/app_threadx.d \
./Core/Src/crc.d \
./Core/Src/ec25.d \
./Core/Src/gpdma.d \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/icache.d \
./Core/Src/main.d \
./Core/Src/memorymap.d \
./Core/Src/stm32u5xx_hal_msp.d \
./Core/Src/stm32u5xx_hal_timebase_tim.d \
./Core/Src/stm32u5xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32u5xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -DTX_INCLUDE_USER_DEFINE_FILE -DTX_SINGLE_MODE_NON_SECURE=1 -DNX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlertSign_BrightwayElectronics/Middlewares/Third_Party/NetXDuo/test/regression/netxduo_test" -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Device/ST/STM32U5xx/Include -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/My_Workspace/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/ethernet" -I../AZURE_RTOS/App -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/ports/cortex_m33/gnu/inc -I../NetXDuo/App -I../NetXDuo/Target -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/ports/cortex_m33/gnu/inc -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/template/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Inc" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o: ../Core/Src/%.S Core/Src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -DDEBUG -DTX_SINGLE_MODE_NON_SECURE=1 -c -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/My_Workspace/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/template/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Core/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo/App" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS/App" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include/dsp" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.cyclo ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/adc.su ./Core/Src/app_threadx.cyclo ./Core/Src/app_threadx.d ./Core/Src/app_threadx.o ./Core/Src/app_threadx.su ./Core/Src/crc.cyclo ./Core/Src/crc.d ./Core/Src/crc.o ./Core/Src/crc.su ./Core/Src/ec25.cyclo ./Core/Src/ec25.d ./Core/Src/ec25.o ./Core/Src/ec25.su ./Core/Src/gpdma.cyclo ./Core/Src/gpdma.d ./Core/Src/gpdma.o ./Core/Src/gpdma.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/i2c.cyclo ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/i2c.su ./Core/Src/icache.cyclo ./Core/Src/icache.d ./Core/Src/icache.o ./Core/Src/icache.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/memorymap.cyclo ./Core/Src/memorymap.d ./Core/Src/memorymap.o ./Core/Src/memorymap.su ./Core/Src/stm32u5xx_hal_msp.cyclo ./Core/Src/stm32u5xx_hal_msp.d ./Core/Src/stm32u5xx_hal_msp.o ./Core/Src/stm32u5xx_hal_msp.su ./Core/Src/stm32u5xx_hal_timebase_tim.cyclo ./Core/Src/stm32u5xx_hal_timebase_tim.d ./Core/Src/stm32u5xx_hal_timebase_tim.o ./Core/Src/stm32u5xx_hal_timebase_tim.su ./Core/Src/stm32u5xx_it.cyclo ./Core/Src/stm32u5xx_it.d ./Core/Src/stm32u5xx_it.o ./Core/Src/stm32u5xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32u5xx.cyclo ./Core/Src/system_stm32u5xx.d ./Core/Src/system_stm32u5xx.o ./Core/Src/system_stm32u5xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/tx_initialize_low_level.d ./Core/Src/tx_initialize_low_level.o ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

