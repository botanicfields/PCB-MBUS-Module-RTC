// Copyright 2021 BotanicFields, Inc.
// BF-031 PCF8563 RTC Module for M-BUS of M5Stack Basic and Gray
// example

#include <M5Stack.h>
#include "BF_Wifi.h"
#include "BF_Pcf8563.h"
#include "BF_RtcxNtp.h"
#include "BF_M5StackTableClock.h"
#include "ResetReason.h"

// for loop control
const int loop_ms(100);       // 100ms
const int interval_ms(1000);  // 1sec
int loop_last_ms(0);

void setup()
{
  const bool lcd_enable(true);
  const bool sd_enable(true);
  const bool serial_enable(true);
  const bool i2c_enable(true);
  M5.begin(lcd_enable, sd_enable, serial_enable, i2c_enable);

  M5.Lcd.wakeup();
  M5.Lcd.setBrightness(100);
  M5.Lcd.fillScreen(TFT_BLACK);
  M5.Lcd.setTextSize(2);
  M5.Lcd.setTextDatum(TL_DATUM);
  M5.Lcd.setTextColor(TFT_WHITE, TFT_BLACK);

  M5.Lcd.print("Reset Reason\n");
  PrintResetReason();

  M5.Lcd.print("I2C, RTCx\n");
  rtcx.Begin(Wire);

  // RTCx PCF8563: for adjusting trimmer capacitor
  rtcx.ClockOutForTrimmer();  // comment out in consideration of power consumption

  // RTCx PCF8563: timer interrupt
  const int timer_sec(60);
  rtcx.SetTimer(timer_sec);
  const bool enable_interrupt(true);
  const bool pulse_mode(true);  // generate short pulse
  const bool keep_flag(true);   // every 60sec
  rtcx.EnableTimerInterrupt(enable_interrupt, pulse_mode, keep_flag);

  // set system time, connect Wi-Fi, start NTP
  SetTimeFromRtcx();
  M5.Lcd.print("Wi-Fi setup\n");
  WifiBegin();
  WiFi.setSleep(false);  // https://macsbug.wordpress.com/2021/05/02/buttona-on-m5stack-does-not-work-properly/
  M5.Lcd.print("NTP setup\n");
  NtpBegin();

  TableClockInit();

  // loop control
  loop_last_ms = millis();
}

void loop()
{
  M5.update();
//  WifiProcess();

  TableClock();

//  Serial.println(millis() - loop_last_ms);  // to check process time
  delay(loop_ms + loop_last_ms - millis());
  loop_last_ms = millis();
}
