#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

void i2cInit();             /* Ustawia pull-upy i konfiguruje bitrate magistrali */
void i2cWaitForComplete();  /* Czeka na ustawienie flagi TWINT */
void i2cStart();            /* Wysyła warunek startu (ustawia TWSTA) */
void i2cStop();             /* Wysyła warunek stopu (ustawia TWSTO) */
void i2cReset();            /* Wysyła warunek stopu (ustawia TWSTO) i resetuje TWI */
void i2cSend(uint8_t data); /* Wysyła dane, czeka na ukończenie */
uint8_t i2cReadAck();       /* Czyta dane, wysyła ACK po ukończeniu (ustawia TWEA) */
uint8_t i2cReadNoAck();     /* Czyta dane, wysyła NOACK po ukończeniu (nie ustawia TWEA) */


// inicjalizacja UART
void uart_init()
{
  // ustaw baudrate
  UBRR0 = UBRR_VALUE;
  // wyczyść rejestr UCSR0A
  UCSR0A = 0;
  // włącz odbiornik i nadajnik
  UCSR0B = _BV(RXEN0) | _BV(TXEN0);
  // ustaw format 8n1
  UCSR0C = _BV(UCSZ00) | _BV(UCSZ01);
}

// transmisja jednego znaku
int uart_transmit(char data, FILE *stream)
{
  // czekaj aż transmiter gotowy
  while(!(UCSR0A & _BV(UDRE0)));
  UDR0 = data;
  return 0;
}

// odczyt jednego znaku
int uart_receive(FILE *stream)
{
  // czekaj aż znak dostępny
  while (!(UCSR0A & _BV(RXC0)));
  return UDR0;
}

FILE uart_file;

const uint8_t eeprom_addr = 0xa0;

#define i2cCheck(code, msg) \
          if ((TWSR & 0xf8) != (code)) { \
            printf(msg " failed, status: %.2x\r\n", TWSR & 0xf8); \
            i2cReset(); \
            continue; \
          }

int main() {
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    // zainicjalizuj I2C
    i2cInit();

    while(1) {
        char command[8];
        uint16_t addr;
        uint8_t value;
        printf("> ");
        scanf("%s %"SCNd16, command, &addr);
      
        if (!strncmp(command, "read", 4)) {
          i2cStart();
          i2cCheck(0x08, "I2C start")
          i2cSend(eeprom_addr | ((addr & 0x100) >> 7)); // 1. slave address - write mode bit == 0
          i2cCheck(0x18, "I2C EEPROM write request")
          i2cSend(addr & 0xff); // 2. send address to slave
          i2cCheck(0x28, "I2C EEPROM set address")
          i2cStart(); // repeated start
          i2cCheck(0x10, "I2C second start")
          i2cSend(eeprom_addr | 0x1 | ((addr & 0x100) >> 7)); // 3. slave address once again, this time read mode bit == 0
          i2cCheck(0x40, "I2C EEPROM read request")
          uint8_t data = i2cReadNoAck(); // 4. read data from slave
          i2cCheck(0x58, "I2C EEPROM read")
          i2cStop();
          i2cCheck(0xf8, "I2C stop")

          printf("Read %.3x: %x\r\n", addr, data);
        }
        else if (!strncmp(command, "write", 5)) {
          scanf("%"SCNd8, &value);
          
          i2cStart();
          i2cCheck(0x08, "I2C start")
          i2cSend(eeprom_addr | ((addr & 0x100) >> 7)); // 1. slave address - write mode bit == 0
          i2cCheck(0x18, "I2C EEPROM write request") 
          i2cSend(addr & 0xff); // 2. send address to slave
          i2cCheck(0x28, "I2C EEPROM set address")    
          i2cSend(value); // 3. send value to slave
          i2cCheck(0x28,"I2C EEPROM write data") 
          i2cStop();
          i2cCheck(0xf8, "I2C stop")

          printf("Write %.3x: %x\r\n", addr, value);
        }

    }
}

// ====================== helper functions definitions

void i2cInit() {
  // ustaw bitrate
  // 8MHz / (16+2*TWBR*1) ~= 100kHz
  TWBR = 32;
  // uruchom TWI
  TWCR |= _BV(TWEN);
}
void i2cWaitForComplete() {
  // czekaj na flagę TWINT
  while(!(TWCR & _BV(TWINT)));
}
void i2cStart() {
  // wyślij warunek startu
  TWCR = _BV(TWINT) | _BV(TWEN) | _BV(TWSTA);
  i2cWaitForComplete();
}
void i2cStop() {
  // wyślij warunek stopu
  TWCR = _BV(TWINT) | _BV(TWEN) | _BV(TWSTO);
}
void i2cReset() {
  // wyślij warunek stopu i wyłącz TWI
  TWCR = _BV(TWINT) | _BV(TWSTO);
}
uint8_t i2cReadAck() {
  // odczytaj dane, wyślij ACK
  TWCR = _BV(TWINT) | _BV(TWEN) | _BV(TWEA);
  i2cWaitForComplete();
  return TWDR;
}
uint8_t i2cReadNoAck() {
  // odczytaj dane, wyślij NOACK
  TWCR = _BV(TWINT) | _BV(TWEN);
  i2cWaitForComplete();
  return TWDR;
}
void i2cSend(uint8_t data) {
  // wyślij dane
  TWDR = data;
  TWCR = _BV(TWINT) | _BV(TWEN);
  i2cWaitForComplete();
}