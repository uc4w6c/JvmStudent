#!/bin/bash

while :
do
    jps | grep jar | awk '{print $1}' | xargs -I{} jstat -gccause {} >> /app/logs/jstat.log
    sleep 5s
done

