################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sensors/ToFSensor/vl53l0x/vl53l0x_api.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.c \
../Sensors/ToFSensor/vl53l0x/vl53l0x_tof.c 

OBJS += \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.o \
./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.o 

C_DEPS += \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.d \
./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.d 


# Each subdirectory must supply rules for building sources it contributes
Sensors/ToFSensor/vl53l0x/%.o Sensors/ToFSensor/vl53l0x/%.su Sensors/ToFSensor/vl53l0x/%.cyclo: ../Sensors/ToFSensor/vl53l0x/%.c Sensors/ToFSensor/vl53l0x/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu18 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Lucas/git/Studienarbeit_V10/Sensors" -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Lucas/git/Studienarbeit_V10/Middlewares/Third_Party/Segger" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Sensors-2f-ToFSensor-2f-vl53l0x

clean-Sensors-2f-ToFSensor-2f-vl53l0x:
	-$(RM) ./Sensors/ToFSensor/vl53l0x/vl53l0x_api.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_api.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_api.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_api.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_calibration.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_core.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_ranging.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_api_strings.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_platform_log.su ./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.cyclo ./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.d ./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.o ./Sensors/ToFSensor/vl53l0x/vl53l0x_tof.su

.PHONY: clean-Sensors-2f-ToFSensor-2f-vl53l0x

