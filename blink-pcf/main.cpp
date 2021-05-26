// Blink

// Turns an LED on for one second, then off for one second, repeatedly.

// Created 8 March 2018

// This example code is in the public domain.
#ifdef __unix__
#include <Piduino.h>  // All the magic is here ;-)
#else
// Defines the serial port as the console on the Arduino platform
#define Console Serial
#endif

#include "PcfLed.h"
#include "pcf8574.h"

TwoWire bus(2);
Pcf8574 pcf8574(bus);

// <DANGER> Be careful !!! Before launching this program :
//    -> Check that the pin below is well connected to an LED ! <-
PcfLed led (pcf8574, 1);

void setup() {
  led.begin();
}

void loop () {
  // Press Ctrl+C to abort ...
  led.set(true);
  delay (500);
  led.set(false);
  delay (500);
}
