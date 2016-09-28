// -*- coding: utf-8 -*-

// Сентябрь 2016г. Константин Ильяшенко <kx13@ya.ru>

// Макросы:
// F_CPU - частота процессора
// MCU - тип микроконтроллера
// определены в Makefile

#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>

#define TIMER_FREQ 100UL // Требуемая частота таймера (Герц)
#define TIMER_PRESCALER 1 // Установить значение делителя таймера в TCCR1B (Bits 2:0)

#define MAX_TIMER  (F_CPU / TIMER_PRESCALER) / TIMER_FREQ // максимальное значение таймера в режиме CTC
#if MAX_TIMER > UINT16_MAX
// значение MAX_TIMER слишком большое, необходимо увеличить TIMER_PRESCALER.
# error "MAX_TIMER too large, need increase TIMER_PRESCALER."
#endif

#define low(x)  ((x) & 0xFF)
#define high(x) (((x) >> 8) & 0xFF)

#define set_bit(port,bit)   port |= _BV(bit)
#define reset_bit(port,bit) port &= ~(_BV(bit))

#define STOP_BEEP() reset_bit(TCCR0A, COM0B0)
#define START_BEEP() set_bit(TCCR0A, COM0B0)

const uint16_t MAIN_TIMER_MAX = (TIMER_FREQ - 1); // количество отчсетов таймера за 1 секунду

const int8_t led_digits[] = {64, 121, 36, 48, 25, 18, 2, 120, 0, 16};

int main(void)
{
  return 0;
}
