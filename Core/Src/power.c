#include "power.h"

#include "main.h"

int init_power() {
  int from_standby = 0;

  // Enable Power Clock
  LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);

  // Check if the system was resumed from StandBy mode
  if (LL_PWR_IsActiveFlag_SB() != 0) {
    // Clear Standby flag
    LL_PWR_ClearFlag_SB();
    from_standby = 1;
  }
  // Check and Clear the Wakeup flag
  if (LL_PWR_IsActiveFlag_WU() != 0) {
    LL_PWR_ClearFlag_WU();
  }

  return from_standby;
}

void standby() {
  // Disable all used wakeup sources
  LL_PWR_DisableWakeUpPin(LL_PWR_WAKEUP_PIN1);

  // Clear all wake up Flag
  LL_PWR_ClearFlag_WU();

  // Enable wakeup pin
  LL_PWR_EnableWakeUpPin(LL_PWR_WAKEUP_PIN1);

  // pin may be high, need to clear all wake up Flag again
  LL_PWR_ClearFlag_WU();

  // Enable ultra low power mode
  LL_PWR_EnableUltraLowPower();

  // Request to enter STANDBY mode
  // Following procedure describe in STM32L0xx Reference Manual
  // See PWR part, section Low-power modes, Standby mode

  // Set STANDBY mode when CPU enters deepsleep
  LL_PWR_SetPowerMode(LL_PWR_MODE_STANDBY);

  // Set SLEEPDEEP bit of Cortex System Control Register
  LL_LPM_EnableDeepSleep();

  // This option is used to ensure that store operations are completed
#if defined ( __CC_ARM)
    __force_stores();
  #endif
  // Request Wait For Interrupt
  __WFI();
}

void reboot() {
  NVIC_SystemReset();
}
