## Brake Pedal Plausibility Check
That check make sure that the motor does not get power when an hard brake is occurs. 
> **TODO** we need to figure the threshold for hard braking according to T11.6.5. For now we assume it 30bar in the brake pressure sensor.
If hard brake occurs, the motor torque will change to 0Nm if one of the following condition happen in the same time for more then 500ms (EV2.3.1):
- signals pedal travel equivalent to ≥25 % desired motor torque.
    > **TODO** we need to figure the equivalent percentage of the pedal. 
- motor power is greater then 5kW.

It stop forcing the 0Nm only when two condition are fulfilled (regardless thee brake condition): 
1. signals pedal travel is less then 5%.
2. motor torque is 0Nm.   