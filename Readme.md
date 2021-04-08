# Useless Box

A box with a switch.

If you dare to flip the switch on, the box will immediatelly flip the switch back off.

Project includes code for an STM32L0 chip, STL files to 3d-print the box and the wiring diagram.
Compile and flash with the STM32CubeIDE (I used v1.5).
Code features: PWM duty cycle, deep sleep/standby, wakeup via interrupt pin
 
What you will need (besides basic soldering equipment and a 3d printer):

* STM32L0F4 chip or similar power saving cpu (and an ST-Link programming adapter for flashing)
* Servo SG90 (motor works with 5-6V but pwm data only needs 3V)
* Switch with >2cm long lever
* LED (if you want an ON indicator)
* 3 10k resistors
* 2 2x1.5V AAA battery holders
* Wire
* TSSOP20 to 0.25in pin spacing adapter PCB (directly soldering wires on adjacent CPU pins would be demanding...)

2021, Joachim Banzhaf

