#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

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

int main() {
  // zainicjalizuj UART
  uart_init();
  // skonfiguruj strumienie wejścia/wyjścia
  fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
  stdin = stdout = stderr = &uart_file;

    while (1) {
        printf("int8_t:\r\n");
        int8_t a8, b8;
        scanf("%"SCNd8" %"SCNd8, &a8, &b8);
        printf("%"PRId8" + %"PRId8" = %"PRId8"\r\n", a8, b8, a8 + b8);
        printf("%"PRId8" - %"PRId8" = %"PRId8"\r\n", a8, b8, a8 - b8);
        printf("%"PRId8" * %"PRId8" = %"PRId8"\r\n", a8, b8, a8 * b8);
        printf("%"PRId8" / %"PRId8" = %"PRId8"\r\n", a8, b8, a8 / b8);

        printf("int16_t:\r\n");
        int16_t a16, b16;
        scanf("%"SCNd16" %"SCNd16, &a16, &b16);
        printf("%"PRId16" + %"PRId16" = %"PRId16"\r\n", a16, b16, a16 + b16);
        printf("%"PRId16" - %"PRId16" = %"PRId16"\r\n", a16, b16, a16 - b16);
        printf("%"PRId16" * %"PRId16" = %"PRId16"\r\n", a16, b16, a16 * b16);
        printf("%"PRId16" / %"PRId16" = %"PRId16"\r\n", a16, b16, a16 / b16);

        printf("int32_t:\r\n");
        int32_t a32, b32;
        scanf("%"SCNd32" %"SCNd32, &a32, &b32);
        printf("%"PRId32" + %"PRId32" = %"PRId32"\r\n", a32, b32, a32 + b32);
        printf("%"PRId32" - %"PRId32" = %"PRId32"\r\n", a32, b32, a32 - b32);
        printf("%"PRId32" * %"PRId32" = %"PRId32"\r\n", a32, b32, a32 * b32);
        printf("%"PRId32" / %"PRId32" = %"PRId32"\r\n", a32, b32, a32 / b32);

        printf("int64_t:\r\n");
        int64_t a64, b64;
        int32_t tmp1, tmp2;
        scanf("%"SCNd32" %"SCNd32, &tmp1, &tmp2);
        a64 = tmp1; b64 = tmp2;
        printf("%"PRId32" + %"PRId32" = %"PRId32"\r\n", a64, b64, a64 + b64);
        printf("%"PRId32" - %"PRId32" = %"PRId32"\r\n", a64, b64, a64 - b64);
        printf("%"PRId32" * %"PRId32" = %"PRId32"\r\n", a64, b64, a64 * b64);
        printf("%"PRId32" / %"PRId32" = %"PRId32"\r\n", a64, b64, a64 / b64);

        printf("float:\r\n");
        float af, bf;
        scanf("%f %f", &af, &bf);
        printf("%f + %f = %f\r\n", af, bf, af + bf);
        printf("%f - %f = %f\r\n", af, bf, af - bf);
        printf("%f * %f = %f\r\n", af, bf, af * bf);
        printf("%f / %f = %f\r\n", af, bf, af / bf);
    }
}
