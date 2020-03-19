int objeto = 0; // variavel do objeto

void setup() {
  pinMode(7, INPUT); //pino ligado ao coletor do fototransistor
  Serial.begin(9600);  // Calibrando velocidade de transmissão do arduino com o sensor

}

void loop() {
objeto = digitalRead(7); //objeto está ligado a entrada digital número 7
if (objeto == 0) // se objeto ficar em posição 0 mostrará detectado
 {
  Serial.println("objeto : detectado");
 }
else //se objeto ficar em 1 objeto está ausente
 {
  Serial.println("objeto : ausente");
  
 }
 
delay(1000); // delay de 1000ms antes do final do programa
}
