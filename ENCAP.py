def PUL():

	if GPIO.input(pulsador_pin) == GPIO.LOW:
		# Cambiar el estado del LED
		if GPIO.input(led_pin) == GPIO.HIGH:
			GPIO.output(led_pin, GPIO.LOW)
			print("led apagado")
		else:
			GPIO.output(led_pin, GPIO.HIGH)
			print("led encendido")
		# Esperar a que el pulsador sea liberado
		while GPIO.input(pulsador_pin) == GPIO.LOW:
			time.sleep(0.1)
