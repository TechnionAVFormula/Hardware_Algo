//this script is reading the encoder sensor without using external library, record the sensor logic output as vector and print it.

// define pins
#define sensorA 2
#define sensorB 3
#define ledA 12
#define ledB 11
#define An1 A1
#define An2 A2


int cntA=0;
int cntB=0;

String recordA = "[";
String recordB = "[";

void setup() {
    pinMode(sensorA,INPUT);
    pinMode(sensorB,INPUT);
    pinMode(ledA,OUTPUT);
    pinMode(ledB,OUTPUT);
    pinMode(An1,OUTPUT);
    pinMode(An2,OUTPUT);

    attachInterrupt(digitalPinToInterrupt(sensorA), recordSensor, CHANGE);
    attachInterrupt(digitalPinToInterrupt(sensorB), recordSensor, CHANGE);

    Serial.begin(250000);
}

void loop() {
  
    // Serial.println(cntA);
    // Serial.println(cntB);
    // Serial.println();
    delay(1000);
    recordA += "]";
    recordB += "]";
    Serial.println(recordA);
    Serial.println(recordB);
    Serial.println();
    recordA = "[";
    recordB = "[";
}

void countA(){
  bool prob = digitalRead(sensorA);
  digitalWrite(ledA,prob);

  if(prob)
    cntA++;
}

void countB(){
  bool prob = digitalRead(sensorB);
  digitalWrite(ledB,prob);
  if(prob)
    cntB++;
}

void recordSensor() {
    bool probA = digitalRead(sensorA);
    bool probB = digitalRead(sensorB);
    digitalWrite(ledA,probA);
    digitalWrite(ledB,probB);
    recordA += String(probA) + ",";
    recordB += String(probB) + ",";
}


