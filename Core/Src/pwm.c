#include <pwm.h>
#include "millis.h"

static TIM_TypeDef *_tim = TIM2;
static pwm_t _pwms[] = { { 1000, LL_TIM_CHANNEL_CH3, 300, 30 } };
static int _are_pwms_on = 0;
static const uint32_t _brightness_reduction = 1;

// Set actual current duty cycle
// Check that switch statement handles all configured channels
void set_duty(uint32_t index, uint32_t duty) {
  switch (_pwms[index].channel) {
  case LL_TIM_CHANNEL_CH3:
    LL_TIM_OC_SetCompareCH3(_tim, duty);
    _pwms[index].curr_duty = duty;
    break;
  case LL_TIM_CHANNEL_CH4:
    LL_TIM_OC_SetCompareCH4(_tim, duty);
    _pwms[index].curr_duty = duty;
    break;
  default:
    break;
  }
}

void pwms_off() {
  if (_are_pwms_on) {
    _are_pwms_on = 0;
    for (uint32_t i = 0; i < sizeof(_pwms) / sizeof(*_pwms); i++) {
      set_duty(i, 0);
      LL_TIM_CC_DisableChannel(_tim, _pwms[i].channel);
    }
    LL_TIM_DisableCounter(_tim);
  }
}

void pwms_on() {
  if (!_are_pwms_on) {
    _are_pwms_on = 1;
    LL_TIM_EnableCounter(_tim);
    uint32_t now = millis();
    for (uint32_t i = 0; i < sizeof(_pwms) / sizeof(*_pwms); i++) {
      LL_TIM_CC_EnableChannel(_tim, _pwms[i].channel);
      set_duty(i, _pwms[i].duty);
      _pwms[i].last_cycle_ms = now;
    }
  }
}

void pwm_duty(uint32_t pwm, uint32_t duty) {
  if (_pwms[pwm].duty != duty) {
    _pwms[pwm].duty = duty;
    if (_pwms[pwm].cycle_ms == 0
        || elapsed(_pwms[pwm].last_cycle_ms) <= _pwms[pwm].on_ms) {
      set_duty(pwm, duty);
    }
  }
  pwm_handler();
}

void led_brightness(uint32_t index, uint8_t brightness) {
  uint32_t duty = _pwms[index].max_duty * brightness * brightness / 0xff / 0xff
      / _brightness_reduction / _brightness_reduction;
  pwm_duty(index, duty);
}

void pwm_blink(uint32_t index, uint32_t cycle_ms, uint32_t on_ms) {
  _pwms[index].cycle_ms = cycle_ms;
  _pwms[index].on_ms = on_ms;
}

void pwm_handler() {
  uint32_t now = millis();
  for (uint32_t i = 0; i < sizeof(_pwms) / sizeof(*_pwms); i++) {
    // handle blink cycle
    if (_pwms[i].cycle_ms
        && elapsed(_pwms[i].last_cycle_ms) > _pwms[i].cycle_ms) {
      _pwms[i].last_cycle_ms = now;
    }

    if (_pwms[i].cycle_ms == 0
        || elapsed(_pwms[i].last_cycle_ms) <= _pwms[i].on_ms) {
      // pwm should be on (permanently or due to blink phase)
      if (_pwms[i].curr_duty != _pwms[i].duty) {
        set_duty(i, _pwms[i].duty);
      }
    } else {
      // pwm should be off
      if (_pwms[i].curr_duty != 0) {
        set_duty(i, 0);
      }
    }
  }
}
