
# EBS - Emergency Brake System
A critical system in any Autonamus vehicle

Resposible of stopping the car in case of a critical failure

## The system consists of three main parts: A Supervisor CPU, A Logic Shutdown Circuit and Mechanical breaks

## Supervisor CPU
What does it do?


Manages the Autonamus System stage


Its job is checking that all the critical systems of the car is working as it should
It will periodically check the systems using canbus and toggle a signal to let the watchdog know that everything is OK
Should a problem arise it should stop the car by triggering the SDC


## SDC - Shut-Down Circuit

A fully logical circuit

Responsible of keeping notice that the CPU is operating as usual using a WATCHDOG

Enables the Supervisor to open the SDC in case of failure or
in case of CPU stall

## Mechanical part
When powerd, breaks would release from the unpowerd locked state /


# How Does it work
When a failure is detected the system will cut power to the breaks actuators and thus will lock the breaks breaking .
(breaks need to be realeased manually)

Power wouldn't return to the actuators before resetting the system manually.

On startup would power the actuators only if reseted correctly and an autonamus mission initiated.

When ready2drive would break enough to stop the car from rolling on a 15% grade hill.
