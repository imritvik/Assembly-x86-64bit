int trig=8;
int echo=9;
int buz=13;
void setup() {
  // put your setup code here, to run once:
pinMode(trig,OUTPUT);
pinMode(buz,OUTPUT);
pinMode(echo,INPUT);
Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(trig,LOW);
delay(2);
digitalWrite(trig,HIGH);
delay(10);
digitalWrite(trig,LOW);

long duration = pulseIn(echo,HIGH);
int dist = duration * 0.034/2;

Serial.print(dist);
Serial.println("cm");

if(dist<3) {
  digitalWrite(buz,HIGH);
}
else {
  digitalWrite(buz,LOW);
} 
}
