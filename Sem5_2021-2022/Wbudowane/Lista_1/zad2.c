#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define DOT 200
#define DASH 600
#define SPACE_BLINK 400
#define SPACE_LETTER 1000     // delay time between 2 letters
#define SPACE_WORD 2000 // delay time between words


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

int8_t character_map[43][5] = {
    {1, 1, 1, 1, 1}, // 0
    {0, 1, 1, 1, 1}, // 1
    {0, 0, 1, 1, 1}, // 2
    {0, 0, 0, 1, 1}, // 3
    {0, 0, 0, 0, 1}, // 4
    {0, 0, 0, 0, 0}, // 5
    {1, 0, 0, 0, 0}, // 6
    {1, 1, 0, 0, 0}, // 7
    {1, 1, 1, 0, 0}, // 8
    {1, 1, 1, 1, 0}, // 9
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {-1, -1, -1, -1, -1}, // empty
    {0, 1, -1, -1, -1}, // A
    {1, 0, 0, 0, -1},   // B
    {1, 0, 1, 0, -1},   // C
    {1, 0, 0, -1, -1},  // D
    {0, -1, -1, -1, -1},// E
    {0, 0, 1, 0, -1},   // F
    {1, 1, 0, -1, -1},  // G
    {0, 0, 0, 0, -1},   // H
    {0, 0, -1, -1, -1}, // I
    {0, 1, 1, 1, -1},   // J
    {1, 0, 1, -1, -1},  // K
    {0, 1, 0, 0, -1},   // L
    {1, 1, -1, -1, -1}, // M
    {1, 0, -1, -1, -1}, // N
    {1, 1, 1, -1, -1},  // O
    {0, 1, 1, 0, -1},   // P
    {1, 1, 0, 1, -1},   // Q
    {0, 1, 0, -1, -1},  // R
    {0, 0, 0, -1, -1},  // S
    {1, -1, -1, -1, -1},// T
    {0, 0, 1, -1, -1},  // U
    {0, 0, 0, 1, -1},   // V
    {0, 1, 1, -1, -1},  // W
    {1, 0, 0, 1, -1},   // X
    {1, 0, 1, 1, -1},   // Y
    {1, 1, 0, 0, -1}    // Z

};

void blink(int8_t c) {
  PORTD |= _BV(PD5);
  if (c == 0)
    _delay_ms(DOT);
  if (c == 1)
    _delay_ms(DASH);
  PORTD &= ~_BV(PD5);
  _delay_ms(SPACE_BLINK);
}

void char_blink(int8_t idx) {
  int i = 0;
  while (character_map[idx][i] != -1  && i < 5) {
    blink(character_map[idx][i]);
    i++;
  }
  _delay_ms(SPACE_LETTER);
}

void char_to_LED(char c) {
  if (c == ' ') {
    _delay_ms(SPACE_WORD);
    return;
  }
  
  int8_t idx = (int8_t)c - 48;
  if (c >= 'a' && c <= 'z')
    idx -= 32;
  char_blink(idx);
}

int main() {
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;

    char buffer[64];
    printf("Enter string\r\n");
    scanf("%63[a-zA-Z0-9 ]", buffer);
    printf("Displaying string: %s\r\n", buffer);
    
    DDRD |= _BV(PD5);
    
    while (1) {
      int8_t i = 0;
      while(buffer[i] && i < 64) {
        char_to_LED(buffer[i]);
        i++;
      }
      _delay_ms(SPACE_WORD);
    }
}
