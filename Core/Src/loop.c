// Arduino style setup() and loop() to get away from generated main.c

#include "pwm.h"
#include "loop.h"

#include "print.h"
#include "power.h"
#include "millis.h"

// adapt to your servo and mechanical setup
#define SWITCH_POS 200
#define HIDE_POS -710

void setup(void) {
  millis_setup();

  LL_GPIO_SetOutputPin(LED_GPIO_Port, LED_Pin);

  print_str("\nUselessBox 1.1 " __DATE__ " " __TIME__ "\n");

  if (init_power()) {
    print_str("Wakeup\n");
  } else {
    print_str("Reset\n");
  }
}

// pos in promille 0-1000, negative in other direction
uint32_t pos2duty(int32_t pos) {
  const uint32_t min_duty = MIN_DUTY - 700; // 700: valid for my servo
  const uint32_t max_duty = 2 * MIN_DUTY + 300; // 300: valid for my servo

  return (pos + 1000) * (max_duty - min_duty) / 2000 + min_duty;
}

// Set servo to given position and return ms until pos is reached
uint32_t servo_pos(int32_t pos) {
  static const uint32_t HALF_SWEEP_MS = 700; // my servos half sweep
  static const int32_t NO_POS = 0xffff;
  static int32_t prev_pos = NO_POS;

  pwm_duty(0, pos2duty(pos));

  uint32_t ms = 0;
  if (prev_pos == NO_POS) {
    ms += HALF_SWEEP_MS;
    prev_pos = 0;
  }
  int32_t diff_pos = prev_pos - pos;
  if (diff_pos < 0)
    diff_pos = -diff_pos;
  ms += diff_pos * HALF_SWEEP_MS / 1000;
  prev_pos = pos;

  return ms;
}

void loop(void) {
  uint32_t now = millis();
  if (now > 1000) {
    pwms_on();

    // switch pos and back to hide pos as fast as possible
    delay(servo_pos(SWITCH_POS));

    LL_GPIO_ResetOutputPin(LED_GPIO_Port, LED_Pin);

    delay(servo_pos(HIDE_POS));

    pwms_off();

    print("Uptime", now, ": ");
    print_str("Sleeping\n");
    standby();

    delay(1000);
    print("Uptime", millis(), ": ");
    print_str("Sleep failed\n");
    reboot();

    while (1)
      ;
  }
}
