// Copyright 2021 BotanicFields, Inc.
// BF-031 PCF8563 RTC Module for M-BUS of M5Stack Basic and Gray
// example

#include <M5Stack.h>
#include "BF_Wifi.h"
#include "BF_Pcf8563.h"
#include "BF_RtcxNtp.h"
#include "BF_M5StackTableClock.h"
//#include "ResetReason.h"
#include "BF_ResetReason.h"

// for loop control
const int loop_ms(100);       // 100ms
const int interval_ms(1000);  // 1sec
int loop_last_ms(0);

// for testing rtcx
const bool enable_clko(true);
const bool enable_int(true);
const int  timer_10s(10);
const int  timer_60s(60);
const bool enable_interrupt(true);
const bool pulse_mode(true);  // generate short pulse
const bool keep_flag(true);   // every 60sec

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

  // to check resett by INT of RTCx PCF8563
  SerialLcdPrintln(TFT_WHITE, "Reset Reason CPU0:");
  SerialLcdPrintln(TFT_YELLOW, ResetReasonCpu0().c_str());
//  SerialLcdPrintln(TFT_YELLOW, VerboseRestReasonCpu0().c_str());
  SerialLcdPrintln(TFT_WHITE, "Reset Reason CPU1:");
  SerialLcdPrintln(TFT_YELLOW, ResetReasonCpu1().c_str());
//  SerialLcdPrintln(TFT_YELLOW, VerboseRestReasonCpu1().c_str());

  // RTCx PCF8563: connect and start
  SerialLcdPrint(TFT_WHITE, "I2C, RTCx:");
  if (rtcx.Begin(Wire) == 0)
    SerialLcdPrintln(TFT_GREEN, "OK");
  else {
    SerialLcdPrintln(TFT_RED, "ERROR");
  }

  // RTCx PCF8563: for adjusting trimmer capacitor
  SerialLcdPrint(TFT_WHITE, "Clock Out:");
  if (rtcx.ClockOutForTrimmer(enable_clko) == 0)
    SerialLcdPrintln(TFT_GREEN, "OK");
  else
    SerialLcdPrintln(TFT_RED, "ERROR");

  // RTCx PCF8563: timer
  SerialLcdPrint(TFT_WHITE, "Set timer:");
  double timer_return = rtcx.SetTimer(timer_10s);
  SerialLcdPrint(TFT_YELLOW, timer_return);
  if (timer_return != 0.0)
    SerialLcdPrintln(TFT_GREEN, " OK");
  else
    SerialLcdPrintln(TFT_RED, " ERROR");

  // RTCx PCF8563: timer interrupt
  SerialLcdPrint(TFT_WHITE, "Enable Interrupt:");
  if (rtcx.EnableTimerInterrupt(enable_interrupt, pulse_mode, keep_flag) == 0)
    SerialLcdPrintln(TFT_GREEN, "OK");
  else
    SerialLcdPrintln(TFT_RED, "ERROR");

  // RTCx PCF8563: set system time from RTCx
//  SetTimeFromRtcx();
  SetTimeFromRtcxLcd();

  // set system time, connect Wi-Fi, start NTP
  SerialLcdPrintln(TFT_WHITE, "Wi-Fi setup");
  WifiBegin();
  WiFi.setSleep(false);  // https://macsbug.wordpress.com/2021/05/02/buttona-on-m5stack-does-not-work-properly/
  SerialLcdPrintln(TFT_WHITE, "NTP setup");
  NtpBegin();

  // wait button-C to proceed into loop
  SerialLcdPrintln(TFT_CYAN, "Button-C to continue:");
  while (!M5.BtnC.wasReleased()) {
    M5.update();
    RtcxUpdate();
  }

  // RTCx PCF8563: disable CLKO and INT
  rtcx.ClockOutForTrimmer(!enable_clko);
  rtcx.DisableTimer();
  rtcx.DisableTimerInterrupt();

  // start table-clock
  TableClockInit();

  // loop control
  loop_last_ms = millis();
}

void loop()
{
  M5.update();
  if (M5.BtnA.wasReleased()) {
    // set period 1sec for CLKO
    rtcx.ClockOutForTrimmer(enable_clko);
  }
  if (M5.BtnB.wasReleased()) {
    // set timer of every 60sec for INT
    rtcx.SetTimer(timer_60s);
    rtcx.EnableTimerInterrupt(enable_interrupt, pulse_mode, keep_flag);
  }
  if (M5.BtnC.wasReleased()) {
    // disable CLKO and INT
    rtcx.ClockOutForTrimmer(!enable_clko);
    rtcx.DisableTimer();
    rtcx.DisableTimerInterrupt();
  }

//  WifiProcess();
  RtcxUpdate();
  TableClock();

//  Serial.println(millis() - loop_last_ms);  // to check process time
  delay(loop_ms + loop_last_ms - millis());
  loop_last_ms = millis();
}

void SetTimeFromRtcxLcd()
{
  struct tm tm_init;
  const char* time_zone = "JST-9";
  setenv("TZ", time_zone, 1);
  tzset();  // Assign the local timezone from setenv for mktime()
  SerialLcdPrint(TFT_WHITE, "Set time:");
  if (rtcx.ReadTime(&tm_init) == 0) {
    SerialLcdPrintln(TFT_GREEN, "RTCx valid");
    struct timeval tv = { mktime(&tm_init), 0 };
    settimeofday(&tv, NULL);
  }
  else {
    SerialLcdPrintln(TFT_RED, "ERROR RTCx invalid");
    tm_init.tm_year = 120;  // 2020
    tm_init.tm_mon  = 0;    // January
    tm_init.tm_mday = 1;
    tm_init.tm_hour = 0;
    tm_init.tm_min  = 0;
    tm_init.tm_sec  = 0;
    struct timeval tv = { mktime(&tm_init), 0 };
    settimeofday(&tv, NULL);
  }
  getLocalTime(&tm_init);
  char str[64];
  strftime(str, 63, "%B %d %Y", &tm_init);
  SerialLcdPrintln(TFT_YELLOW, str);
  strftime(str, 63, "%A %H:%M:%S", &tm_init);
  SerialLcdPrintln(TFT_YELLOW, str);
}

void SerialLcdPrint(int text_color, const char *str)
{
  M5.Lcd.setTextColor(text_color, TFT_BLACK);
  M5.Lcd.print(str);
  Serial.print(str);
}

void SerialLcdPrint(int text_color, double d)
{
  M5.Lcd.setTextColor(text_color, TFT_BLACK);
  M5.Lcd.print(d);
  Serial.print(d);
}

void SerialLcdPrintln(int text_color, const char *str)
{
  M5.Lcd.setTextColor(text_color, TFT_BLACK);
  M5.Lcd.println(str);
  Serial.println(str);
}

void SerialLcdPrintln(int text_color, double d)
{
  M5.Lcd.setTextColor(text_color, TFT_BLACK);
  M5.Lcd.println(d);
  Serial.println(d);
}
