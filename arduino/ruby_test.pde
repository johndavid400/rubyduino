
int incomingByte;

int led = 13;
int led1 = 48;
int led2 = 49;  
int led3 = 10;

int state1 = 0;
int state2 = 0;
int state3 = 0;

void setup() {

  Serial.begin(9600);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led, OUTPUT);

  delay(1000);

}


void loop() {

  if (Serial.available() > 0){
    incomingByte = Serial.read();
    delay(50);

    if (incomingByte == 112){
      if (state1 == 0){
        digitalWrite(led1, HIGH);
        state1 = 1;
      }
      else {
        digitalWrite(led1, LOW); 
        state1 = 0;
      }
    }
    else if (incomingByte == 111){
      if (state2 == 0){
        digitalWrite(led2, HIGH);
        state2 = 1;
      }
      else {
        digitalWrite(led2, LOW); 
        state2 = 0;
      }
    }
    else if (incomingByte == 110){
      if (state3 == 0){
        digitalWrite(led3, HIGH);
        state3 = 1;
      }
      else {
        digitalWrite(led3, LOW); 
        state3 = 0;
      }
    }
    else if (incomingByte == 120){
      digitalWrite(led1, LOW); 
      digitalWrite(led2, LOW); 
      digitalWrite(led3, LOW); 
    }
    else if (incomingByte == 122) {
      digitalWrite(led1, HIGH); 
      digitalWrite(led2, HIGH); 
      digitalWrite(led3, HIGH); 
    }

    Serial.println(incomingByte);
  }
}







