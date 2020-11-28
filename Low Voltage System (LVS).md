## Low Voltage System

### Insulation
- The entire TS and LVS must be galvanically isolated.
- TS and LVS circuits must be physically segregated such that they are not running through the same conduit or connector, except for interlock circuit connections (EV4.3.2).
- Where both TS and LVS are present within an enclosure, they must be separated by insulating
barriers made of moisture resistant, UL recognized or equivalent insulating materials, rated
for 150 ◦C or higher (e.g. Nomex based electrical insulation), or maintain the following
spacing through air, or over a surface (similar to those deﬁned in UL1741) (EV4.3.3):
    | Voltage | Spacing |
    |:-------:|:-------:|
    | U <100 VDC | 10 mm|
    | 100 VDC < U <200 VDC | 20 mm |
    | U >200 VDC | 30 mm |
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