#include "millis.h"

#include "main.h"

volatile uint32_t _millis = 0;  // global millis counter

void millis_setup() {
  SysTick_Config(SystemCoreClock / 1000);
}

uint32_t millis(void) {
  return _millis;
}

uint32_t elapsed(uint32_t since_ms) {
  return _millis - since_ms;
}

void delay(uint32_t ms) {
  LL_mDelay(ms);
}
