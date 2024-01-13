#!/usr/bin/env bash
count=0
echo > out.log

while true
do
    ./3_question.sh > out.log
    if [[ $? != 0 ]]; then
        cat out.log
        echo "failed after $count times"
        break
    fi
    ((count++))

done

