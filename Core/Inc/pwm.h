#ifndef PWM_H
#define PWM_H

#include "main.h"

typedef struct pwm {
  uint32_t max_duty; // Max brightness (e.g. to make different leds same brightness)
  uint32_t channel;       // PWM channel
  uint32_t cycle_ms;      // Blinking duration if > 0
  uint32_t on_ms;         // On during blink cycle
  uint32_t duty;          // On time of PWM duty cycle
  uint32_t curr_duty;     // Last set PWM duty cycle
  uint32_t last_cycle_ms; // Last blink cycle start
} pwm_t;

// Switch off channels and counter
void pwms_off();

// Switch pwms on, start new blink cycle
void pwms_on();

// Change pwm duty cycle if it changed
void pwm_duty(uint32_t index, uint32_t duty);

// Calculate duty to match (more) linear brightness 0-255
void led_brightness(uint32_t index, uint8_t brightness);

// Change blink pattern (cycle_ms == 0 means: no blinking, just PWM)
void pwm_blink(uint32_t index, uint32_t cycle_ms, uint32_t on_ms);

// Handle pwm blinking (call often)
void pwm_handler();

#endif
