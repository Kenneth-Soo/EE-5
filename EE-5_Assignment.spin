{
  Project:      EE-5 Assignment 1
  Platform:     Parallex Project USB Board
  Revision:     1.1
  Author:       Kenneth
  Date:         26th October 2021
  Log:
        Date:        Description:
        26/10/2021   Adding 1 Seven Segment Display
}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

OBJ

  Term : "FullDuplexSerial.spin"

PUB main

  DIRA[0..7]~~
  OUTA[0..7]~

  repeat 5
    !OUTA[0..5]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..5]
    !OUTA[1..2]
    waitcnt(cnt + clkfreq/3)
    !OUTA[1..2]
    !OUTA[0..1]
    !OUTA[3..4]
    !OUTA[6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..1]
    !OUTA[3..4]
    !OUTA[6]
    !OUTA[0..3]
    !OUTA[6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..3]
    !OUTA[6]
    !OUTA[1..2]
    !OUTA[5..6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[1..2]
    !OUTA[5..6]
    !OUTA[0]
    !OUTA[2..3]
    !OUTA[5..6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0]
    !OUTA[2..3]
    !OUTA[5..6]
    !OUTA[0]
    !OUTA[2..6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0]
    !OUTA[2..6]
    !OUTA[0..2]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..2]
    !OUTA[0..6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..6]
    !OUTA[0..3]
    !OUTA[5..6]
    waitcnt(cnt + clkfreq/3)
    !OUTA[0..3]
    !OUTA[5..6]