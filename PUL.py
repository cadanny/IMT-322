import RPi.GPIO as GPIO
import time

import ENCAP

# Configurar el modo de los pines GPIO
GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)


# Configurar el pin GPIO como una salida para el LED
led_pin = 38
GPIO.setup(led_pin, GPIO.OUT)

# Configurar el pin GPIO como una entrada para el pulsador
pulsador_pin = 37
GPIO.setup(pulsador_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

# Encender el LED al inicio del programa
GPIO.output(led_pin, GPIO.HIGH)

while True:
	ENCAP.PUL()

# Limpiar los pines GPIO
GPIO.cleanup()
