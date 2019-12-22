#!/bin/bash

echo " S0C    S1C    S0U    S1U      EC       EU        OC         OU       MC     MU    CCSC   CCSU   YGC     YGCT    FGC    FGCT    CGC    CGCT     GCT     " > /app/logs/jstat.log
sleep 1s
while :
do
    PROCESS_ID=$( jps | grep jar | awk '{print $1}' )
    if [ -z "${PROCESS_ID}" ]; then
      # END
      exit 0
    fi
    # jps | grep jar | awk '{print $1}' | xargs -I{} jstat -gccause {} | tail -1 >> /app/logs/jstat.log
    jstat -gc ${PROCESS_ID} | tail -1 >> /app/logs/jstat.log
    sleep 1s
done
