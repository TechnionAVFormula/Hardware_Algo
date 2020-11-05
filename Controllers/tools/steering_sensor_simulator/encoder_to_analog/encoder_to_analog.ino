// this script convert the encoder movement to PWM signal

#include <Encoder.h>

// define pins
#define sensorA 2
#define sensorB 3
#define ledA 12
#define ledB 11
#define An1 9 //from arduino to faulhaber via LPF 4.7k[R] 10uF[C]
#define An2 A2 //directly from arduino to faulhaber
#define An3 A3  //out of LPF into arduino

#define ONE_CYCLE 8630 //one cycle of the encoder
#define MAX_VALUE ONE_CYCLE // max value planned to be read from Encoder  
#define MIN_VALUE 0    // min value planned to be read from Encoder
#define MAX_ACCEPTABLE (MAX_VALUE + 10) // max value that is still ok - error margin
#define MIN_ACCEPTABLE (MIN_VALUE - 10) // min value that is still ok - error margin
#define RANGE MAX_VALUE-MIN_VALUE // size of the range of that we reading

#define V_STEPS 255



Encoder myEnc(sensorB, sensorA);
//   avoid using pins with LEDs attached

void setup() {
    Serial.begin(9600);
    Serial.println("Encoder To Analog Sketch:");
    pinMode(ledA,OUTPUT);
    pinMode(ledB,OUTPUT);
    pinMode(An1,OUTPUT);
    pinMode(An2,OUTPUT);
    pinMode(An3,INPUT);
    
}

long oldPosition  = -999;
unsigned long previousMillis = millis();
bool error = false;

void loop() {
    // turn off error led after 2 sec
    if(error) {
        unsigned long currentMillis = millis();
        if(currentMillis - previousMillis > 2000) {
            digitalWrite(ledA, LOW);
            digitalWrite(ledB, LOW);
        }
    }

    long position = myEnc.read();
    // notify if the error is too high
    if(position > MAX_ACCEPTABLE || position < MIN_ACCEPTABLE) {
        if(position > MAX_ACCEPTABLE)
            digitalWrite(ledA, HIGH);
        if(position < MIN_ACCEPTABLE)
            digitalWrite(ledB, HIGH);
        error = true;
        previousMillis = millis();
        Serial.print("error: over counting. ");
        Serial.print("position = ");
        Serial.println(position);
    }
    // check for reading over value and fix position to avoid too high or too low voltage output  
    if(position > MAX_VALUE)
        position = MAX_VALUE;
    if(position < MIN_VALUE)
        position = MIN_VALUE;   

    analogWrite(An1, V_STEPS*position/RANGE);

    //for debug
    // delay(500);
    // Serial.print("output v: ");
    // Serial.println(analogRead(An3));
    // Serial.print("encoder count (after limit change): ");
    // Serial.println(position);
        
}
