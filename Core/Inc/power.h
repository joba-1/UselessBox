#ifndef POWER_H
#define POWER_H

// Init for standby, return true if started from standby
int init_power();

// Go to standby, does (should?) not return
void standby();

// Reboot processor
void reboot();

#endif
