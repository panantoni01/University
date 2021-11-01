#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define LED PD5
#define LED_DDR DDRD
#define LED_PORT PORTD

#define BTN PD4
#define BTN_PIN PIND
#define BTN_DDR DDRD
#define BTN_PORT PORTD

#define DOT 200
#define DASH 600
#define SPACE_BLINK 400
#define SPACE_LETTER 1000     // delay time between 2 letters
#define SPACE_WORD 2000 // delay time between words


// inicjalizacja UART
void uart_init() {
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
int uart_transmit(char data, FILE *stream) {
    // czekaj aż transmiter gotowy
    while(!(UCSR0A & _BV(UDRE0)));
    UDR0 = data;
    return 0;
}

// odczyt jednego znaku
int uart_receive(FILE *stream) {
    // czekaj aż znak dostępny
    while (!(UCSR0A & _BV(RXC0)));
    return UDR0;
}

FILE uart_file;

int8_t character_map[36][5] = {
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

void blink_LED() {

}



int main() {
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;

    BTN_DDR &= ~_BV(BTN);
    BTN_PORT |= _BV(BTN);
    LED_DDR |= _BV(LED);

    while (1) {
        
    }
}

