################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.c 

OBJS += \
./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.o 

C_DEPS += \
./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32f7xx-nucleo-144-bsp-main/%.o Drivers/stm32f7xx-nucleo-144-bsp-main/%.su Drivers/stm32f7xx-nucleo-144-bsp-main/%.cyclo: ../Drivers/stm32f7xx-nucleo-144-bsp-main/%.c Drivers/stm32f7xx-nucleo-144-bsp-main/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/USUARIO/Documents/EMB_II/EJ3/Drivers/stm32f7xx-nucleo-144-bsp-main" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32f7xx-2d-nucleo-2d-144-2d-bsp-2d-main

clean-Drivers-2f-stm32f7xx-2d-nucleo-2d-144-2d-bsp-2d-main:
	-$(RM) ./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.cyclo ./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.d ./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.o ./Drivers/stm32f7xx-nucleo-144-bsp-main/stm32f7xx_nucleo_144.su

.PHONY: clean-Drivers-2f-stm32f7xx-2d-nucleo-2d-144-2d-bsp-2d-main

