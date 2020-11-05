// this test script, print the couting value of the incoder after it stops.

#include <Encoder.h>    //see documatation https://www.arduino.cc/reference/en/libraries/encoder/

// define pins
#define sensorA 2
#define sensorB 3

Encoder myEnc(sensorB, sensorA);
// avoid using pins with LEDs attached

void setup() {
  Serial.begin(9600);
  Serial.println("Basic Encoder Test:");
}

#define STOP_TIME 750  //stop time period befor printing th new location (in milli second) 
long oldPosition  = -999;
unsigned long previousMillis = millis();
bool position_printed = false;

void loop() {
    unsigned long currentMillis = millis();
    long newPosition = myEnc.read();
    if (newPosition != oldPosition ) {
        oldPosition = newPosition;
        previousMillis = currentMillis;
        position_printed = false;
    }
    else {
        if(currentMillis - previousMillis > STOP_TIME && !position_printed) {
            position_printed = true;
            Serial.println(newPosition);
        }
    }
        
}
