void main() {
    import std.stdio;
    import std.datetime;
    import std.format;

    auto utctime = Clock.currTime(UTC());

    float thehours;
    if ((utctime.hour)%24 == 23){
        thehours = 0;
    }
    else {
	thehours = ((utctime.hour)%24)+1;
    }


    float theminutes = utctime.minute;
    float theseconds = utctime.second;
    float thebeats = ((((thehours*60)+theminutes)*60) + theseconds) / 86.4;

    writeln(format("@%.2f", thebeats));
}
