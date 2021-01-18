
# Car dashboard!

there are multiply options for car dashboard
### driving a real car dashboard
![](https://www.xsimulator.net/community/attachments/jaguar_cluster-jpg.76941/)
this option is nice, but might be expensive, and probably a overkill, this shouldn't be too difficult since those use regular can bus protocol from what i found, similar things are done in [driving simulators] (https://www.xsimulator.net/community/threads/how-to-guide-real-car-dashboard-for-racing-games.11967/)community 
* heavy and big (over 2kg)
* not customizable 
* expensive

similar option but maybe easier and cheaper:
### OBD2 scanner 
![](https://ae01.alicdn.com/kf/H44cf1ed9e3e24a868e45976d90e50d0a9/EANOP-L200-Car-HUD-OBD2-GPS-Smart-Head-Up-Display-Speed-Monitoring-9-Interface-Digital-Gauge.jpg_Q90.jpg_.webp)
this is an easier and cheaper option then the first one, 
[aliexpress link](https://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20201112072944&SearchText=obd2+gauge)
it has alot of display options already built in, i think its all we need, but its not customizable , 
research is needed for simulating the odb2 protocol,
this seems to be a nice option
* ligher and smaller option(about 0.5kg)
* not customizable but many options

other options :
### driving  a tft display 
![arduino mega 2560 TFT hx8357b speedometer - YouTube](https://i.ytimg.com/vi/19ozOo7J1Dk/maxresdefault.jpg)
we thought about 5 or 7 inch display, this is probably the cheaper options , but alot of studying and testing is needed to make this work,
we dont know how tft displays perform under the sun
the gui might not be that difficult to build , we found some tools who can help with that, for example
![GUIslice Builder](https://user-images.githubusercontent.com/8510097/90728338-9a8be100-e279-11ea-969e-cbd8bb0ac6c6.png)
[GUIslice](https://github.com/ImpulseAdventure/GUIslice)
* ligher and smaller option (200-300g)
* very customizable
* alot of rnd needed and testing time.
* sunlight compatablity research needed

## more about driving a tft display

for that , we need a display and a driver, we thought about the [RA8875](https://cdn-shop.adafruit.com/datasheets/RA8875_DS_V12_Eng.pdf) chip which is a bit pricey , but we think it offers what we need.
we found a few displays with that chip
[5-inch option](https://www.buydisplay.com/tft-5-inch-lcd-display-module-controller-board-serial-i2c-ra8875)
[7-inch option](https://www.buydisplay.com/7-inch-lcd-module-capacitive-touch-screen-panel-i2c-spi-serial)
i think I2C options is the easiest , and fastest, those displays have the driver intgrated 

the lightest easiest and most time and cost effective soultion:
### ready made HMI displays 
![](https://i.pinimg.com/originals/50/66/31/5066319f1dd380259ce0cdaed3c07a7d.jpg)
this is an a display and a powerful driver already intgretad togher.
you configure the gui with a deticated software that has alot of display objects already built in, and they are customizable ,
there are high brighness displays by a compant called [STONE](https://www.stoneitech.com/), which compete with [Nextion](https://nextion.tech/) which offer better software, but less display options.
this option is easy to implement, as the only research needed is reading from the CAN bus.
this seems to be the best option
* ligher and smaller option(less then 200-300g)
* easy customiztion with ready gui elements
* sunlight visablity guranteed 
* not expensive
* easy to implement


similar option but maybe easier and cheaper:
### Exsiting option MOTEC display
![](https://cdn3.volusion.com/gmydp.qtndl/v/vspfiles/photos/M-D153-2.jpg)
an easy option, it has alot of display options already built in , and a controller to connect some buttons ,i didnt found it to be customizable , 
connects to car CAN and logs and display all data ,
* allready working i guess.
couldn't find much data MOTEC site is down now

## How we should progress 

if we pick the tft display route , we should order a small cheap display , and studying it, displaying a working gui, displaying the data correctly , testing under the sun and such.

buying an HMI display will be easier , in that case we should order one , and start working on simulating the obd protocol to work on CAN read code , connecting the display with uart ,and designing a gui with the given software, thats pretty much it  , this option is cool because it could save a lot of work since we will start working on the end product immediately.

## what we could do immediately
connecting buttons , knobs and other to the teensy, getting to know the teensy development environment, and checking other arm options like stm32 chips.
we could also try and simulating a can bus to get started with sending and receiving data of the bus.
 - - - -
# can bus
# usefull forums about teensy and canbus library:
https://forum.pjrc.com/threads/41937-Using-the-teensy-on-can-bus
https://forum.pjrc.com/threads/39867-Another-fork-of-FlexCAN?highlight=canbus
https://forum.pjrc.com/threads/57948-Teensy-3-2-Canbus-Which-FlexCan-do-I-use
https://forum.pjrc.com/threads/57997-Canbus-with-Teensy-3-2-4-0
# libraries in github:
https://github.com/collin80/FlexCAN_Library
https://github.com/tonton81/FlexCAN_Library
# teensy useful forum:
https://www.pjrc.com/store/teensy32.html
