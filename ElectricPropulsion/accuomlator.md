## Cell Configuration 

### Limits 
- momentary power from the entire battery: 80kW
- segment limit:
    - maximum energy stored: 6MJ (1666Wh)
        > Cell Energy – the maximum cell voltage times the nominal capacity of the used cell (EV 5.1.2)
    - max weight: 12kg
    - max voltage: 120VDC


### Requirements
- consumers:
    - Inverter: 500VDC, 70kW max, avg 15kW
    - DC-DC converter: 2kW max, avg 1kW
- Driving time: 0.5h

### cell properties
- max capacity: 4200Ah (17.64Wh)
- Voltage 2.5-4.2VDC
- max discharge current: 45A
- resistance: 16mOhm @10A/s
- charge current: 4.2A (charging time 1.5h)
- weight: 70g

### conclusions
- typical energy loss in cell: 16mOhm * (10A)^2 * h = 1.6Wh
    - available energy in cell: 17.64-1.6 = 16.04Wh
- max cells per segment: 1666/16.04 = 103
- battery capacity (by avg values): (15kW+1kW)*0.5h = 8kWh
    - number of require cells: 8kWh/16.04Wh = 500 
    - cells weight: 35kg
    - minimum 5 segments needed
- 120 cells in series for 500VDC - actually it 504VDC 
    - cells configuration must be 480 or 600 cells
- all segment must be identical for replacement option


### 480 cells solutions
|      | 120 series  | 120 series  | 120 series  | 120 series  |
| ---- | :---------: | :---------: | :---------: | :---------: |
| Seg1 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |
| Seg2 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |
| Seg3 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |
| Seg4 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |
| Seg5 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |
| Seg6 | 20 (series) | 20 (series) | 20 (series) | 20 (series) |

properties:
- capacity: 8467.2Wh
- available energy: 7699.2Wh
- voltage: 300-504VDC
- max current: 180A
- power: 54kW - 90.72kW 
- weight: 33.6kW
- 48

#### synqor 600W 180-425VDC converter on each 3 segments (12V+24V)
need to make sure:
    - problem with ground 

pros:
- homogenies discharge

cons:
- current pick can drop the voltage lower then 360.
- limit the battery discharge:
    - min 360VDC (3V per cell)
    - unused energy - 400mAh per cell -> 0.4Ah * 480 * 2.75V = 528Wh total (approximate)

#### synqor 600W 180-425VDC converter on 4 segments (12V+24V)
need to make sure:
    - problem with balance and BMS

pros:
    - no voltage issues (250-420V)

cons:
- non homogenies discharge
- unused energy: assuming equals power use on all segments -> 1.32kWh

#### synqor another converter
- 2 segment:
    - 112-168V
- 1 segment:
    - 56-84V

converter options:
- 66-160V, 255W
- 42-110, 250W -> 1500W
- 34-160, 228W
- 34-137, 240W


#### BMS
https://lithiumbalance.com/products/n-bms/
https://www.staflsystems.com/battery-management-systems/

|     | Solution                   | Solution Description                                        | cells per segment | number of segment | Input Range | Output Range | Power | Dimension | Weight | Cooling | Price       | Perusing Options |
| --- | -------------------------- | ----------------------------------------------------------- | ----------------- | ----------------- | ----------- | ------------ | ----- | --------- | ------ | ------- | ----------- | ---------------- |
|     | [Analog Devices LTC6813-1] | 27 segments of 18 cells.                                    |                   |                   |             |              |       |           |        |         | 150$ (each) |                  |
|     | [STAFL BMS1xxxx]           | master unit BMS1000M and multiple BMS1101S/2s monitor units |                   |                   |             |              |       |           |        |         | 150$ (each) |                  |


>Note: calculated for ~480 cells. 

[Analog Devices LTC6813-1]:https://www.analog.com/en/products/ltc6813-1.html
[STAFL]:https://www.staflsystems.com/battery-management-systems/

