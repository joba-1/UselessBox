#include "print.h"

#include "usart.h"

void print_str(const char *str) {
  LL_LPUART_Enable(LPUART1);
  while (*str) {
    while (!LL_LPUART_IsActiveFlag_TXE(LPUART1))
      ;
    LL_LPUART_TransmitData8(LPUART1, *(uint8_t*) str);
    str++;
  }
  while (!LL_LPUART_IsActiveFlag_TC(LPUART1))
    ;
  LL_LPUART_Disable(LPUART1);
}

void print_int(int32_t num) {
  char buf[10];
  int digit;
  int sign = (num < 0) ? -1 : 1;
  if (num < 0)
    num = -num;
  char *pos = buf + sizeof(buf); // points behind buf
  *(--pos) = '\0';
  do {
    digit = num % 10;
    *(--pos) = digit + '0';
    num /= 10;
  } while (num);
  if (sign < 0)
    *(--pos) = '-';
  print_str(pos);
}

void print_hex(uint32_t num) {
  char buf[10];
  unsigned int digit;
  char *pos = buf + sizeof(buf); // points behind buf
  *(--pos) = '\0';
  do {
    digit = num % 16;
    *(--pos) = digit < 10 ? digit + '0' : digit - 10 + 'a';
    num /= 16;
  } while (num);
  *(--pos) = 'x';
  print_str(pos);
}

void print(const char *label, int32_t value, const char *sep) {
  print_str(label);
  print_str(": ");
  print_int(value);
  print_str(sep);
}

void printx(const char *label, uint32_t value, const char *sep) {
  print_str(label);
  print_str(": ");
  print_hex(value);
  print_str(sep);
}
