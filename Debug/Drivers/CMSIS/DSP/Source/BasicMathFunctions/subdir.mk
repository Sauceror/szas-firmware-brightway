################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c \
../Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d \
./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.o Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.su Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.cyclo: ../Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.c Drivers/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -DTX_INCLUDE_USER_DEFINE_FILE -DTX_SINGLE_MODE_NON_SECURE=1 -DNX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Device/ST/STM32U5xx/Include -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/My_Workspace/Inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/common/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/ThreadX/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/ports/cortex_m33/gnu/inc" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/ethernet" -I../AZURE_RTOS/App -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/threadx/ports/cortex_m33/gnu/inc -I../NetXDuo/App -I../NetXDuo/Target -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/common/inc -IC:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Middlewares/ST/netxduo/ports/cortex_m33/gnu/inc -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common/drivers/template/ethernet" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/NetXDuo" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party/NetXDuo/common" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Middlewares/Third_Party" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/AZURE_RTOS" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Src" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/STM32U5xx_HAL_Driver/Inc" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/STM32U5xx_HAL_Driver" -I"C:/Users/ethan/STM32Cube/Repository/STM32Cube_FW_U5_V1.7.0/Drivers/CMSIS/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include" -I"C:/Users/ethan/STM32CubeIDE/workspace_1.17.0/SchoolZoneAlert_Final/Drivers/CMSIS/DSP/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.su
	-$(RM) ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d
	-$(RM) ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.su ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.cyclo ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o ./Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions

