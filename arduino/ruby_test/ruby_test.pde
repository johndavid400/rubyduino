
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


    if (incomingByte == 100){
      digitalWrite(led1, HIGH);
    }
    else if (incomingByte == 101){
      digitalWrite(led1, LOW);
    }

    else if (incomingByte == 102){
      digitalWrite(led2, HIGH);
    }
    else if (incomingByte == 103){
      digitalWrite(led2, LOW);
    }

    else if (incomingByte == 104){
      digitalWrite(led3, HIGH);
    }
    else if (incomingByte == 105){
      digitalWrite(led3, LOW);
    }

    else if (incomingByte == 120){
      digitalWrite(led1, LOW);
      digitalWrite(led2, LOW);
      digitalWrite(led3, LOW);
    }

    else if (incomingByte == 121) {
      digitalWrite(led1, HIGH);
      digitalWrite(led2, HIGH);
      digitalWrite(led3, HIGH);
    }

    else {
    }

    Serial.println(incomingByte);
  }

    if (incomingByte == 122){
      digitalWrite(led1, HIGH);
      digitalWrite(led2, LOW);
      delay(500);
      digitalWrite(led2, HIGH);
      digitalWrite(led1, LOW);
      delay(500);
    }

}







