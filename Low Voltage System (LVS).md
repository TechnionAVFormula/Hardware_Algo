## Low Voltage System

### Specification
- Input Voltage: 500-600V (optinal 300-500V if we must)
- Output Voltage: 12V,24V
- Power: 2kW  (1kW @12V + 1kW @24V)
    > The dry requirement is total of 1307.6W (594.8W @12V + 712.8W @24V)


### Insulation
- The entire TS and LVS must be galvanically isolated.
- TS and LVS circuits must be physically segregated such that they are not running through the same conduit or connector, except for interlock circuit connections (EV4.3.2).
- Where both TS and LVS are present within an enclosure, they must be separated by insulating
barriers made of moisture resistant, UL recognized or equivalent insulating materials, rated
for 150 ◦C or higher (e.g. Nomex based electrical insulation), or maintain the following
spacing through air, or over a surface (similar to those deﬁned in UL1741) (EV4.3.3):
    | Voltage              | Spacing |
    | :------------------: | :-----: |
    | U <100 VDC           | 10 mm   |
    | 100 VDC < U <200 VDC | 20 mm   |
    | U >200 VDC           | 30 mm   |
    |                      |         |
- Components and cables capable of movement must be positively restrained to maintain
spacing (EV4.3.4 ).
- If TS and LVS are on the same PCB they must be on separate well deﬁned areas of the board (EV4.3.5):
    - the areas must meet the spacing requirements:
        | Voltage | Over Surface | Through Air (Cut in board) | Conformal Coating |
        |:-----:|:----------:|:------------------------:|:---------------:|
        | 0 VDC to 50 VDC | 1.6 mm | 1.6 mm | 1.0 mm |
        | 50 VDC to 150 VDC | 6.4 mm | 3.2 mm | 2.0 mm |
        | 150 VDC to 300 VDC | 9.5 mm | 6.4 mm | 3.0 mm |
        | 300 VDC to 600 VDC | 12.7 mm | 9.5 mm | 4.0 mm |

    - each area clearly marked with “TS” or “LV”. 
    - The outline of the area required for spacing must be marked.
    > “Conformal coating” is referring to a coating insulator, solder resist is not a coating.

    > If integrated circuits are used such as opto-couplers which are rated for the respective maximum TS voltage, see EV1.2.1, but do not fulﬁll the required spacing, then they may still be used and the given spacing does not apply for this integrated circuit.



### Commercial options

|                       | Solution                   | Solution Description                                                                         | Input Range | Output Range | Power        | Dimension                                                | Weight               | Cooling | Price            | Perusing Options         |
| --------------------- | -------------------------- | -------------------------------------------------------------------------------------------- | ----------- | ------------ | ------------ | -------------------------------------------------------- | -------------------- | ------- | ---------------- | ------------------------ |
| ![DVCH1503]           | [Deutronic DVCH1503]       | Two converters 12V,24V in battery (parallel, HV interlock)                                   | 400-800V    | 2-15V,2-30V  | 1500W (each) | 295.0x233.0x68.5mm (each)                                | <5kg (each)          | air     |                  |                          |
| ![DVCH1503]           | [Deutronic DVCH3003]       | One converter 24V in battery (parallel, HV interlock ), additional converter 24->12V outside | 400-800V    | 0-30V        | 3000W        | 295.0x233.0x68.5mm                                       | <5kg                 | air     |                  |                          |
| ![IQ4H]               | [SynQor IQ4H]              | Multiple brick parallel combination of 12/24V and 300/600W                                   | 180-425V    | 5-48V        | 300W,600W    | 119.02x63.14x13mm @600W, 63.14x60.6x12.57mm @300W (each) | 280g@600W, 134g@300W | air     |                  |                          |
| ![DCM5614VD0H36K3T01] | [VICOR DCM5614VD0H36K3T01] | Two parallel converters 24V in battery, additional converter 24->12V outside                 | 180-400V    | 22-36V       | 1300W        | 141.37 x 35.54 x 9.4mm  (each)                           | 215g (each)          | air     | $1,156.04 (each) | [VICOR_mouser]  26 weeks |
| ![CFB750-300S]        | [CINCON CFB750-300S]       | Tow (or three) converters 12V,24V,(24V) in battery   (issue: require soldering to board)     | 200-425V    | 12V,24V      | 750W (each)  | 116.8x61.0x12.7 mm                                       | 230g                 | air     | $290.00 (each)   | [CINCON_mouser] 3 weeks  |
| ![AIF]                | [ARTESYN AIF]              | Multiple brick parallel combination of 12/24V and 600W   (issue: require soldering to board) | 250-420V    | 12V,24V      | 600W (each)  | 116.8x61.0x12.7 mm                                       | 250g                 | air     |                  |                          |

[Deutronic DVCH1503]:https://www.deutronic.com/produkte/dvch1503-700/
[Deutronic DVCH3003]:https://www.deutronic.com/produkte/dvch3003/ 
[DVCH1503]:https://www.deutronic.com/wp-content/uploads/2020/01/DVCHx3.jpg

[SynQor IQ4H]:https://www.synqor.com/product-guide/industrial/dc-dc-converter/isolated/21/385-v
[IQ4H]:https://www.synqor.com/getmedia/7869317c-e05f-4d35-824e-810b6f9fea07/MPFC-115-3PH-270-FP_240x183?width=240&height=183&ext=.png

[VICOR DCM5614VD0H36K3T01]:http://www.vicorpower.com/products?productType=cfg&productKey=DCM5614VD0H36K3T01
[DCM5614VD0H36K3T01]:https://www.mouser.co.il/images/vicor/images/dcm5614bd0h36k3t05_SPL.jpg
[VICOR_mouser]:https://www.mouser.co.il/ProductDetail/Vicor/DCM5614VD0H36K3T01?qs=%2Fha2pyFadujxpTX5w83uwh8qt3NPJSNU4%252BJOG68aWU5dvBAx7hx4ZgJ53ARBlYqk

[CINCON CFB750-300S]:https://www.cincon.com/productdetail/CFB750-300S.html
[CFB750-300S]:https://www.mouser.co.il/images/cincon/images/CFB750-300S12_DSL.jpg
[CINCON_mouser]:https://www.mouser.co.il/ProductDetail/Cincon/CFB750-300S24?qs=W0yvOO0ixfGqq70Hb2lllQ%3D%3D

[ARTESYN AIF]:https://www.artesyn.com/power-supplies/websheet/560/aif-series
[AIF]:https://www.artesyn.com/assets/w530/5951471cf7.png

<!-- 1.[DVCH3000 Series]
    - https://www.deutronic.com/produkte/dvch3003/
    - https://www.deutronic.com/produkte/dvch1503-700/ -->
    
<!-- 1. [SynQor IQ4H Family](https://www.synqor.com/product-guide/industrial/dc-dc-converter/isolated/21/385-v) - multiple brick combination of 12/24V and 300/600W. parallel combination is a feature (include clock sync)
    - Input: 180-425V DC
    - Output: 12,24V each brick has fixed voltage (with trim option), 300/600W
    - Dimension: 119.02 * 63.14 * 13mm @600W, 63.14 * 60.6 * 12.57mm @300W
    - Weight: 280g@600W, 134g@300W
    - HV insulation - REINFORCED INSULATION input to output - need to check if it ia a galvanic isolation.
    - Price: 

    - Pros:
        - redundancy -->


<!-- 2. [VICOR DC-DC Isolated Regulated Converters](http://www.vicorpower.com/dc-dc/isolated-regulated/dcm) - multiple brick combination of 12/24V and 500W.
> More wattage option are available. up to 600W.
> Array (parallel) option ia available but require PCB 
    - Input: 160-420V DC
    - Output: 12,24V each brick has fixed voltage (with trim option), 500W
    - Dimension: 95.13*35.5*9.40mm 
    - Weight: 116g
    - HV insulation - isolated. not sure which class

    - Pros:
        - redundancy for the array option -->

<!-- 6. https://www.mouser.co.il/ProductDetail/Cincon/CFB750-300S24?qs=W0yvOO0ixfGqq70Hb2lllQ%3D%3D
https://www.mouser.co.il/ProductDetail/Cincon/CFB750-300S12N?qs=W0yvOO0ixfFssV7hjzvKNw%3D%3D -->

<!-- 
7. https://www.mouser.co.il/ProductDetail/XP-Power/QHL750300S24?qs=w%2Fv1CP2dgqrRwAzs8wcPvw%3D%3D
https://www.mouser.co.il/ProductDetail/XP-Power/QHL750300S12?qs=w%2Fv1CP2dgqpcbiw4MS5lhw%3D%3D


8. https://www.artesyn.com/power-supplies/websheet/560/aif-series
 -->
