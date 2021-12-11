{
  Project:      EE-5 Practical 1
  Platform:     Parallex Project USB Board
  Revision:     1.1
  Author:       Kenneth
  Date:         25th October 2021
  Log:
        Date:        Description:
        25/10/2021   Adding 2 LEDs
}


CON
        _clkmode = xtal1 + pll16x            'Standard clock mode * crystal frequency                                   'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

VAR
  byte checkValue
  byte i

OBJ

  Term : "FullDuplexSerial.spin"  'UART communication

PUB main

  ' Declaration and Initialisation
  DIRA[20..21]~~       '~~ <- Output  ~ <- Input
  OUTA[20..21]~        '~~ <- High (Voltage=3.3V)  ~ <- Low (Voltage=0)

  Term.Start(31, 30, 0, 115200)
  waitcnt(cnt + clkfreq*2)

  checkValue[0] := 10
  checkValue[1] := 20
  checkValue[2] := 30
  checkValue[3] := 40
  checkValue[4] := 50

  repeat i from 0 to 4

    case byte[checkValue][i]
      10:
        Term.Str(String("checkValue is 10", 13))
      20:
        Term.Str(String("checkValue is 20", 13))
      30:
        Term.Str(String("checkValue is 30", 13))
      40:
        Term.Str(String("checkValue is 40", 13))

    waitcnt(cnt + clkfreq)

  repeat     'Loop
    waitcnt(cnt + clkfreq)   'clkfreq = 1 sec
    !OUTA[20..21]           '! -> Inverse -> OUTA[20..21]~~
    Term.Str(String("Hello"))
