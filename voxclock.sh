#!bin/bash
# this says the time every hour
while true
do
      aplay sound/hour1.wav
      bash play.sh
      aplay sound/hour2.wav
      sleep 3600
done
