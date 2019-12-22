#!/bin/bash

echo "  S0     S1     E      O      M     CCS    YGC     YGCT    FGC    FGCT    CGC    CGCT     GCT    LGCC                 GCC     " > /app/logs/jstat.log
sleep 5s
while :
do
    PROCESS_ID=$( jps | grep jar | awk '{print $1}' )
    if [ -z "${PROCESS_ID}" ]; then
      # END
      exit 0
    fi
    # jps | grep jar | awk '{print $1}' | xargs -I{} jstat -gccause {} | tail -1 >> /app/logs/jstat.log
    jstat -gccause ${PROCESS_ID} | tail -1 >> /app/logs/jstat.log
    sleep 5s
done

