import serial
from time import sleep

ser = serial.Serial('COM3')

while True:
    print(ser.readline())
    sleep(1)