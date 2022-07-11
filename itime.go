package main

import (
    "fmt"
    "time"
)

func main(){
    thetime := time.Now().UTC()
    thehours := float32(thetime.Hour())
    theminutes := float32(thetime.Minute())
    theseconds := float32(thetime.Second())

if thehours == 23 {
	thehours = 0
} else {
	thehours = thehours + 1
}

thebeats := ((((thehours*60)+theminutes)*60) + theseconds) / 86.4
fmt.Printf("@%.2f", thebeats)
}
