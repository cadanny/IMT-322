import RPi.GPIO as GPIO
import time
import curses
from colorama import init, Fore, Style
init()
GPIO.cleanup()
GPIO.setmode(GPIO.BOARD)

GPIO.setup(3,GPIO.OUT)
GPIO.setup(5,GPIO.OUT)
GPIO.setup(7,GPIO.OUT)
def main(stdscr):
	stdscr.nodelay(True)
	try:
		return stdscr.getkey()
	except:
		return None
def key_pressed(key):
	inp_key = curses.wrapper(main)

	while inp_key is not None:
		if key == inp_key:
			return True
		inp_key = curses.wrapper(main)
	return False
while not key_pressed("q"):
	GPIO.output(3,1)
	print(Fore.RED + Style.BRIGHT + "Encendido")
	time.sleep(4)
	GPIO.output(3,0)
	print(Fore.RED +  "Apagado")

	GPIO.output(5,1)
	print(Fore.YELLOW + "Encendido")
	time.sleep(1)
	GPIO.output(5,0)
	print(Fore.YELLOW + "Apagado")

	GPIO.output(7,1)
	print(Fore.GREEN + "Encendido")
	time.sleep(3)
	GPIO.output(7,0)
	print(Fore.GREEN + "Apagado")

GPIO.cleanup()
