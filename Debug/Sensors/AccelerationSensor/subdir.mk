################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sensors/AccelerationSensor/lsm6dsl.c 

OBJS += \
./Sensors/AccelerationSensor/lsm6dsl.o 

C_DEPS += \
./Sensors/AccelerationSensor/lsm6dsl.d 


# Each subdirectory must supply rules for building sources it contributes
Sensors/AccelerationSensor/%.o Sensors/AccelerationSensor/%.su Sensors/AccelerationSensor/%.cyclo: ../Sensors/AccelerationSensor/%.c Sensors/AccelerationSensor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu18 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Lucas/git/Studienarbeit_V10/Sensors" -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Lucas/git/Studienarbeit_V10/Middlewares/Third_Party/Segger" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Sensors-2f-AccelerationSensor

clean-Sensors-2f-AccelerationSensor:
	-$(RM) ./Sensors/AccelerationSensor/lsm6dsl.cyclo ./Sensors/AccelerationSensor/lsm6dsl.d ./Sensors/AccelerationSensor/lsm6dsl.o ./Sensors/AccelerationSensor/lsm6dsl.su

.PHONY: clean-Sensors-2f-AccelerationSensor

