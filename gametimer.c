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

#define STOP_BEEP() reset_bit(TCCR0, COM00)
#define START_BEEP() set_bit(TCCR0, COM00)


enum STATES {STATE_COUNTING, STATE_WAIT, STATE_STOP};
// STATE_COUNTING - режим при котором таймер запущен
// STATE_WAIT - режим ожидания старта
// STATE_STOP - режим остановки, полсе того как игрок нажал кнопку или закончилось время


typedef struct beep_struct
{
  uint8_t freq; // значение таймера, определяющее частоту звука
  uint8_t duration; // длительность звучания
} Beep;

typedef struct counter_struct
{
  uint8_t current; // значение счетчика
  uint8_t last; // предыдущее значение
  uint8_t finished; // флаг окончания счета
  uint16_t fraction; // отсчитывает доли для current
} Counter;

//Звуки для разных событий.
//формула расчета коэффициента для требуемой звуковой частоты
// OCRA = F_CPU / (2 * N * FREQ) - 1
// F_CPU - частота процессора, N - делитель счетчика, FREQ - заданная застота звука
const Beep  start_beep = {200, 50}; // сигнал старт
const Beep player_beep = {25, 100}; // сигнал, когда игрок нажал кнопку
const Beep false_beep = {150, 200}; // сигнал "Фальшстарт"
const Beep timerend_beep = {100, 100}; // сигнал "таймер закончил отсчет"

const uint16_t TICS_IN_SECOND = (TIMER_FREQ - 1); // количество отчсетов таймера за 1 секунду

volatile uint8_t current_beep;
volatile Counter counter;

const int8_t led_digits[] = {64, 121, 36, 48, 25, 18, 2, 120, 0, 16};

ISR (TIMER1_COMPA_vect)
{
}

ISR (TIMER1_COMPB_vect)
{
}

int main(void)
{
  
  DDRA = 0xC0;// 0-5 ножки на вход; 6-7 на выход
  PORTA = 0xC0; // к ножкам 6-7 подключить подтягивающие резисторы

  DDRB = 0xFF; // все ножки на выход
  PORTB = 0x00; // все ножки в логический 0

  DDRC = 0xFO; // 0-4 ножки на вход; 5-7 ножки на выход
  PORTC = 0x00; // все ножки в логический 0

  DDRD = 0xFE; // 0 ножка на вход; 1-7 ножки на выход;
  PORTB = 0x01; // 0 ножку подключить резистор; 1-7 ножки в логический 0

  DDRE = 0xFE; // 0 ножка на вход; 1-2 ножки на выход;
  PORTE = 0x01; // 0 ножку подключить резистор; 1-2 ножки в логический 0

  // Настройка таймера 0
  TCCR0 =  _BV(WGM01); // режим CTC 
  TCCR0 |= _BV(CS01); // делитель частоты на 8
  TCNT0 = 0x00; // стартовое значение счетчика
  OCR0 = 130; // начальное значение регистра сравнения

  // Настройка таймера 1
  TCCR1B =_BV(WGM12) | _BV(CS10); //режим CTC | делитель частоты на 1
  TCNT1H = 0x00;
  TCNT1L = 0x00;
  ICR1H = 0x00;
  ICR1L = 0x00;
  OCR1AH = high(MAX_TIMER);
  OCR1AL = low(MAX_TIMER);
  OCR1BH = 0x00;
  OCR1BL = 0x00;

  // разрешение прерывания от таймеров
  TIMSK = _BV(OCIE1A) | _BV(OCIE1B);


  return 0;
}
