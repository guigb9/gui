int objeto = 0;

void setup() {
  pinMode(7, INPUT); //pino ligado ao coletor do fototransistor
  Serial.begin(9600);  

}

void loop() {
objeto = digitalRead(7);
if (objeto == 0)
 {
  Serial.println("objeto : detectado");
 }
else
 {
  Serial.println("objeto : ausente");
  
 }
 
delay(1000);
}
