#ifndef MILLIS_H
#define MILLIS_H

#include "main.h"

extern volatile uint32_t _millis;

// Start millis counter mechanism
void millis_setup();

// Milliseconds since boot
uint32_t millis(void);

// Elapsed milliseconds since given runtime
uint32_t elapsed(uint32_t since_ms);

// Independence from LL/HAL :)
void delay(uint32_t ms);

#endif
