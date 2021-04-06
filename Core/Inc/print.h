#ifndef PRINT_H
#define PRINT_H

#include "main.h"

// print string to serial
void print_str(const char *str);

// print integer to serial (base 10)
void print_int(int32_t num);

// print unsigned integer to serial (base 16)
void print_hex(uint32_t num);

// print {label}: {value}{sep}, value as integer, base 10
void print(const char *label, int32_t value, const char *sep);

// print {label}: {value}{sep}, value as unsigned integer, base 16
void printx(const char *label, uint32_t value, const char *sep);

#endif
