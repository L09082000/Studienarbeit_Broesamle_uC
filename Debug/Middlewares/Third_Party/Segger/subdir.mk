################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/Segger/SEGGER_RTT.c \
../Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.c \
../Middlewares/Third_Party/Segger/SEGGER_RTT_printf.c \
../Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.c \
../Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.c \
../Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.c 

S_UPPER_SRCS += \
../Middlewares/Third_Party/Segger/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./Middlewares/Third_Party/Segger/SEGGER_RTT.o \
./Middlewares/Third_Party/Segger/SEGGER_RTT_ASM_ARMv7M.o \
./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.o \
./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.o \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.o \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.o \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.o 

S_UPPER_DEPS += \
./Middlewares/Third_Party/Segger/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./Middlewares/Third_Party/Segger/SEGGER_RTT.d \
./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.d \
./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.d \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.d \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.d \
./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/Segger/%.o Middlewares/Third_Party/Segger/%.su Middlewares/Third_Party/Segger/%.cyclo: ../Middlewares/Third_Party/Segger/%.c Middlewares/Third_Party/Segger/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu18 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4S5xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Lucas/git/Studienarbeit_V10/Sensors" -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Lucas/git/Studienarbeit_V10/Middlewares/Third_Party/Segger" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/Segger/%.o: ../Middlewares/Third_Party/Segger/%.S Middlewares/Third_Party/Segger/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/Users/Lucas/git/Studienarbeit_V10/Sensors" -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Lucas/git/Studienarbeit_V10/Middlewares/Third_Party/Segger" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-Third_Party-2f-Segger

clean-Middlewares-2f-Third_Party-2f-Segger:
	-$(RM) ./Middlewares/Third_Party/Segger/SEGGER_RTT.cyclo ./Middlewares/Third_Party/Segger/SEGGER_RTT.d ./Middlewares/Third_Party/Segger/SEGGER_RTT.o ./Middlewares/Third_Party/Segger/SEGGER_RTT.su ./Middlewares/Third_Party/Segger/SEGGER_RTT_ASM_ARMv7M.d ./Middlewares/Third_Party/Segger/SEGGER_RTT_ASM_ARMv7M.o ./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.cyclo ./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.d ./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.o ./Middlewares/Third_Party/Segger/SEGGER_RTT_Syscalls_GCC.su ./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.cyclo ./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.d ./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.o ./Middlewares/Third_Party/Segger/SEGGER_RTT_printf.su ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.cyclo ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.d ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.o ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW.su ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.cyclo ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.d ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.o ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_Config_FreeRTOS.su ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.cyclo ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.d ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.o ./Middlewares/Third_Party/Segger/SEGGER_SYSVIEW_FreeRTOS.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-Segger

