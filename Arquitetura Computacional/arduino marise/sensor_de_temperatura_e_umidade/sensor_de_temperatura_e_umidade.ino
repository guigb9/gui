#include <dht.h> //comando que inclui a biblioteca DHT11
dht DHT; //cria um objeto DHT
uint32_t timer = 0; //zera o tempo
void setup() {
  Serial.begin(9600); //calibra o ajuste da velocidade de transmissão
}

void loop() {
  if(millis() - timer>= 2000) // Executa a medição 1 vez a cada 2 segundos
  {
    DHT.read11 (A1); // chama a leitura da linguagem classe DHT com o pino A1
    Serial.print(DHT.humidity); //exibe a umidade no monitor
    Serial.println(" %"); //Exibe na serial o valor de umidade

    Serial.print(DHT.temperature); //Exibe a temperatura no monitor
    Serial.println("celsius"); // exibe a temperatura em celsius

    timer = millis(); //calibra o tempo novamente

  }
}
