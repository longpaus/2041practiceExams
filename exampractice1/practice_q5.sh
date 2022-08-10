#!/bin/dash

for file in log.6 log.5 log.4 log.3 log.2 log.1 log; do
    if test -f $file; then
        if [ $file = 'log.6' ]; then
            if [ ! -d archive ];then
                mkdir archive
            fi
            newName="$(date +'%Y_%m_%d').gz"
            gzip log.6
            mv log.6.gz $newName
            mv $newName archive/
        elif [ $file = 'log' ]; then
            mv log log.1
        else
            number=$(($(echo $file|cut -c5)+1))
            mv $file "log.$number"
        fi

    fi

done
