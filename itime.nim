import times, strutils

let utctime = now().utc
var thehours: int

if ((utctime.hour) mod 24 == 23):
    thehours = 0
else:
    thehours = ((utctime.hour) mod 24)+1

let theminutes = utctime.minute
let theseconds = utctime.second
var thebeats = ((((float(thehours)*60)+float(theminutes))*60) + float(theseconds)) / 86.4


echo "@" & thebeats.formatFloat(ffDecimal, 2)
