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

void timer1_init()
{
  // ustaw tryb licznika
  // WGM1  = 0000 -- normal
  // CS1   = 001  -- prescaler 1 - chcemy mierzyć cykle procesora
  TCCR1B = _BV(CS10);
}

int main() {
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    // zainicjalizuj licznik
    timer1_init();

    while(1) {
        uint16_t start, stop;
        
        printf("int8_t:\r\n");
        volatile int8_t a8, b8, res8;
        //scanf("%"SCNd8" %"SCNd8, &a8, &b8);
        a8 = 11;
        b8 = 4;
        start = TCNT1;
        res8 = a8+b8;
        stop = TCNT1;
        printf("Dodawanie int8_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res8 = a8*b8;
        stop = TCNT1;
        printf("Mnozenie int8_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res8 = a8/b8;
        stop = TCNT1;
        printf("Dzielenie int8_t: %"PRIu16" cykli\r\n", stop - start);

        printf("int16_t:\r\n");
        volatile int16_t a16, b16, res16;
        //scanf("%"SCNd16" %"SCNd16, &a16, &b16);
        a16 = 315;
        b16 = 31;
        start = TCNT1;
        res16 = a16+b16;
        stop = TCNT1;
        printf("Dodawanie int16_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res16 = a16*b16;
        stop = TCNT1;
        printf("Mnozenie int16_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res16 = a16/b16;
        stop = TCNT1;
        printf("Dzielenie int16_t: %"PRIu16" cykli\r\n", stop - start);

        printf("int32_t:\r\n");
        volatile int32_t a32, b32, res32;
        //scanf("%"SCNd32" %"SCNd32, &a32, &b32);
        a32 = 624901;
        b32 = 115115;
        start = TCNT1;
        res32 = a32+b32;
        stop = TCNT1;
        printf("Dodawanie int32_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res32 = a32*b32;
        stop = TCNT1;
        printf("Mnozenie int32_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res32 = a32/b32;
        stop = TCNT1;
        printf("Dzielenie int32_t: %"PRIu16" cykli\r\n", stop - start);

        printf("int64_t:\r\n");
        volatile int64_t a64, b64, res64;
        int32_t tmp1 = 73568999757366298124, tmp2 = 6629812464;
        //scanf("%"SCNd32" %"SCNd32, &tmp1, &tmp1);
        a64 = tmp1;
        b64 = tmp2;
        start = TCNT1;
        res64 = a64+b64;
        stop = TCNT1;
        printf("Dodawanie int64_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res64 = a64*b64;
        stop = TCNT1;
        printf("Mnozenie int64_t: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        res64 = a64/b64;
        stop = TCNT1;
        printf("Dzielenie int64_t: %"PRIu16" cykli\r\n", stop - start);

        printf("float:\r\n");
        volatile float af, bf, resf;
        //scanf("%f %f", &af, &bf);
        af = 654.3228;
        bf = 31.415;
        start = TCNT1;
        resf = af+bf;
        stop = TCNT1;
        printf("Dodawanie float: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        resf = af*bf;
        stop = TCNT1;
        printf("Mnozenie float: %"PRIu16" cykli\r\n", stop - start);
        start = TCNT1;
        resf = af/bf;
        stop = TCNT1;
        printf("Dzielenie float: %"PRIu16" cykli\r\n", stop - start);

        _delay_ms(600000);
    }
}