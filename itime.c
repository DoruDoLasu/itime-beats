#include <stdio.h>
#include <time.h>

int main(){
    time_t tmi;
    struct tm* utcTime;
    time(&tmi);
    utcTime = gmtime(&tmi);

    float thehours;
    if ((utcTime->tm_hour)%24 == 23){
        thehours = 0;
    }
    else {
	thehours = ((utcTime->tm_hour)%24)+1;
    }


    float theminutes = utcTime->tm_min;
    float theseconds = utcTime->tm_sec;
    float thebeats = ((((thehours*60)+theminutes)*60) + theseconds) / 86.4;

    printf("@%.2f", thebeats);

    return 0;
}
