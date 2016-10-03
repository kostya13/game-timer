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


enum YES_NO {NO = 0, YES = 1};
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

typedef enum STATES {STATE_COUNTING, STATE_WAIT, STATE_STOP} STATES_t;
// STATE_COUNTING - режим при котором таймер запущен
// STATE_WAIT - режим ожидания старта
// STATE_STOP - режим остановки, полсе того как игрок нажал кнопку или закончилось время

//Звуки для разных событий.
//формула расчета коэффициента для требуемой звуковой частоты
// OCRA = F_CPU / (2 * N * FREQ) - 1
// F_CPU - частота процессора, N - делитель счетчика, FREQ - заданная застота звука
const Beep start_beep = {200, 50}; // сигнал старт
const Beep player_beep = {25, 100}; // сигнал, когда игрок нажал кнопку
const Beep false_beep = {150, 200}; // сигнал "Фальшстарт"
const Beep timerend_beep = {100, 100}; // сигнал "таймер закончил отсчет"

const uint16_t TICS_IN_SECOND = (TIMER_FREQ - 1); // количество отчсетов таймера за 1 секунду

const uint8_t time1 = 60;
const uint8_t time2 = 30;
const uint8_t time3 = 10;
const uint8_t time4 = 5;

enum BUTTON_TIMES {button_time1 = 1,
                   button_time2 = 2,
                   button_time3 = 4,
                   button_time4 = 8};

enum BUTTON_PLAYER {button_player1 = 1,
                    button_player2 = 2,
                    button_player3 = 4,
                    button_player4 = 8};

const uint8_t button_start = 16;
const uint8_t button_reset = 32;

const uint8_t light_start = 1;
const uint8_t light_false = 2;
const uint8_t light_player1 = 4;
const uint8_t light_player2 = 5;
const uint8_t light_player3 = 6;
const uint8_t light_player4 = 7;

/*
 Обозначение сегментов в индикаторе
  a
  -
f|g|b
  -
e|d|c
  -

Включенные сегменты для каждой цифры
0 - abcdef
1 - bc
2 - abedg
3 - abcdg
4 - bcfg
5 - acdfg
6 - acdefg
7 - abc
8 - abcdefg
9 - abcdfg
*/
//                             gfedcba-
const int8_t led_digits[] = {0b01111110,  // 0
                             0b00001100,  // 1
                             0b10110110,  // 2
                             0b10011110,  // 3
                             0b11001100,  // 4
                             0b11011010,  // 5
                             0b11111010,  // 6
                             0b00001110,  // 7
                             0b11111110,  // 8
                             0b11011110}; // 9
                             


volatile uint8_t current_beep;
volatile Counter counter;

inline void beep_start(Beep beep)
{
  OCR0 = beep.freq;
  current_beep = beep.duration;
  START_BEEP();

}

void led_show(void)
{
    PORTB = led_digits[counter.current / 10];
    PORTD = led_digits[counter.current % 10];
}

void check_time_keys(const uint8_t key)
{
    switch(key)
    {
        case button_time1:
              counter.current = time1;
              break;
        case button_time2:
              counter.current = time2;
              break;
        case button_time3:
              counter.current = time3;
              break;
        case button_time4:
              counter.current = time4;
              break;
    }
    if(key)
        led_show();
}

void check_reset_button(uint8_t key, uint8_t last_timer, STATES_t* state)
{
    if (key == button_reset)
    {
        reset_bit(PORTE, light_start);              
        reset_bit(PORTE, light_false);              
        for(int i=light_player1; i<=light_player4; i++)
            reset_bit(PORTC, i);              
        counter.current = last_timer;
        led_show();
        *state = STATE_WAIT;
    }
}


void check_player_buttons(uint8_t key, STATES_t* state)
{
    switch(key)
    {
        case button_player1:
            set_bit(PORTC, light_player1);              
              break;
        case button_player2:
            set_bit(PORTC, light_player2);              
              break;
        case button_player3:
            set_bit(PORTC, light_player3);              
              break;
        case button_player4:
            set_bit(PORTC, light_player4);              
              break;
    }
    if(key)
    {
        counter.finished = YES;
        beep_start(player_beep);
        *state = STATE_STOP;
    }
}

ISR (TIMER1_COMPA_vect)
{
  if(counter.finished == YES)
      return;
  if(counter.current > 0)
  {
    if (counter.fraction == TICS_IN_SECOND)
    {
      counter.fraction = 0;
      counter.last = counter.current;
      counter.current--;
    }
    else
      counter.fraction++;
  }
  else 
  {
      counter.finished = YES;
  }
}

ISR (TIMER1_COMPB_vect)
{
    if( current_beep > 0)
    {
        current_beep--;
        return;
    }
    STOP_BEEP();
}

int main(void)
{
  
  DDRA = 0x00;// 0 - 7 ножки на вход
  PORTA = 0xFF; // к ножкам 0-7 подключить подтягивающие резисторы

  DDRB = 0xFF; // все ножки на выход
  PORTB = 0x00; // все ножки в логический 0

  DDRC = 0xF0; // 0-4 ножки на вход; 5-7 ножки на выход
  PORTC = 0x0F; // все ножки в логический 0

  DDRD = 0xFE; // 0 ножка на вход; 1-7 ножки на выход;
  PORTB = 0x01; // 0 ножку подключить резистор; 1-7 ножки в логический 0

  DDRE = 0xFE; // 0 ножка на вход; 1-2 ножки на выход;
  PORTE = 0x01; // 0 ножку подключить резистор; 1-2 ножки в логический 0

  // Настройка таймера 0
  TCCR0 =  _BV(WGM01); // режим CTC 
  TCCR0 |= _BV(CS01); // делитель частоты на 8
  TCNT0 = 0x00; // стартовое значение счетчика

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

  sei();
  uint8_t state = STATE_WAIT;
  counter.current = time1;
  counter.finished = YES;
  uint8_t last_timer = time1;
  uint8_t master_key; 
  uint8_t player_key; 
  led_show();
  while(1)
  {
      switch(state)
      {
          case STATE_WAIT:
              master_key = PINA ^ 0xFF;
              player_key = (PINC & 0x0F ) ^ 0x0F;
              check_time_keys(master_key);

              if(master_key == button_start)
              {
                  set_bit(PORTE, light_start);
                  beep_start(start_beep);
                  last_timer = counter.current;
                  counter.fraction = 0;
                  counter.finished = NO;
                  state = STATE_COUNTING;
                  break;
              }
              if(player_key)
              {
                  set_bit(PORTE, light_false);
                  beep_start(false_beep);
                  state = STATE_STOP;
              } 
              break;

          case STATE_COUNTING:
              master_key = PINA ^ 0xFF;
              player_key = (PINC & 0x0F ) ^ 0x0F;
              check_reset_button(master_key, last_timer, &state);
              if(counter.finished == YES)
              {
                  beep_start(timerend_beep);
                  reset_bit(PORTE, light_start);              
                  counter.current = last_timer;
                  state = STATE_STOP;
              }
              if(counter.current != counter.last)
              {
                  led_show();
              }
              check_player_buttons(player_key, &state);
              break;

          case STATE_STOP:
              master_key = PINA ^ 0xFF;
              check_reset_button(master_key, last_timer, &state);
              break;

          default:
              state = STATE_WAIT;
      }

  }
  return 0;
}
