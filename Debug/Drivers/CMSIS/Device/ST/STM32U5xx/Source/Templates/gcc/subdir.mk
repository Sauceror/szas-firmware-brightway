################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f7xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f9xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g7xx.s \
../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g9xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f7xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f9xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g7xx.o \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g9xx.o 

S_DEPS += \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f7xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f9xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g7xx.d \
./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g9xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/%.o: ../Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/%.s Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -DDEBUG -DTX_SINGLE_MODE_NON_SECURE=1 -c -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/My_Workspace/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/template/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Core/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo/App" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS/App" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include/dsp" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f7xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f7xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f9xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5f9xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g7xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g7xx.o ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g9xx.d ./Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5g9xx.o

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc

