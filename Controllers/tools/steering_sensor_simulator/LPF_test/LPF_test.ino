//this script simulate a changing PWM signal for testing the DAC converter (in this case just a LPF filter)

// define pins
#define ledA 12
#define ledB 11
#define An1 9 //from arduino to faulhaber via LPF 4.7k[R] 10uF[C]
#define An2 A2 //directly from arduino to faulhaber
#define An3 A3  //out of LPF into arduino


void setup() {
    Serial.begin(9600);
    pinMode(An1,OUTPUT);
    pinMode(An2,OUTPUT);
    pinMode(An3,INPUT);
    //Serial.println("LPF Test:");
}

int pwm = 0;
void loop() {
    
    analogWrite(An1, pwm);
    pwm += 5;
    if(pwm >255)
        pwm =0;
    delay(1000);
    Serial.print(pwm);
    Serial.print(",");
    Serial.println(analogRead(An3));
    
}
