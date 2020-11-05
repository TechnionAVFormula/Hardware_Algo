//this script is reading the encoder sensor without using external library, record the sensor logic output as vector and print it. 
//it also determinate the direction of the movement

// define pins
#define sensorA 2
#define sensorB 3
#define ledA 12
#define ledB 11
#define An1 A1
#define An2 A2


int cntA=0;
int cntB=0;
bool direction = true;  //right direction is 1 

const int frame_size = 4;
const int start_frame[frame_size] = {1,1,0,0};
const int right_move[frame_size] = {0,1,1,0}; //faulhaber positive velocity
const int left_move[frame_size] = {1,0,0,1};

int frame[2][frame_size] = {{0,0,0,0},{0,0,0,0}}; 

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
    // recordA += "]";
    // recordB += "]";
    // Serial.println(recordA);
    // Serial.println(recordB);
    // Serial.println();
    // recordA = "[";
    // recordB = "[";
    Serial.println(toString(frame[0], frame_size));
    Serial.println(toString(frame[1], frame_size));
    Serial.println(direction);
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


bool in = false;
void recordSensor() {
    unsigned long t1 = micros();
    if (in == true){Serial.print("error"); return;}
    in = true;
    bool probA = digitalRead(sensorA);
    bool probB = digitalRead(sensorB);

    for(int i=0; i<frame_size-1; i++){
        frame[0][i] = frame[0][i+1];
        frame[1][i] = frame[1][i+1];
    }
    frame[0][frame_size-1] = probA;
    frame[1][frame_size-1] = probB;

    if(isEquals(frame[0], start_frame, frame_size)) {
        if(isEquals(frame[1], right_move, frame_size))
            direction = 1;
        if(isEquals(frame[1], left_move, frame_size))
            direction = 0;
    }
    
    digitalWrite(ledA, probA);
    digitalWrite(ledB, probB);
    recordA += String(probA) + ",";
    recordB += String(probB) + ",";
    
    in = false;
    Serial.println(String(micros() - t1));
}

bool isEquals(int* arr1, const int* arr2, const int size){
    for(int i=0; i<size; i++){
        if(arr1[i] != arr2[i]) return false;
    }
    return true;
}

String toString(const int* arr, const int size) {
    String string = "";
    for(int i=0; i<size; i++) {
        string += arr[i];
    }
    return string;
}

