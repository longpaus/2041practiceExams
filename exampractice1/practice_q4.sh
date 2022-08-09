#!/bin/dash
lowerNum=$(echo $1|sed 's/[^0-9]//g')
higerNum=$(echo $2|sed 's/[^0-9]//g')


str=$1
substr=$lowerNum
 
prefix=${str%%$substr*}
index=${#prefix}


len=${#lowerNum}
s=$(($index+$len+1))

if test $index -eq 0; then
    pre=''
else
    pre=$(eval "echo $1 | cut -c 1-$index")
fi

end=$(eval "echo $1 | cut -c $s-")




n=$lowerNum

while [ "$n" -le "$higerNum" ]
do
    echo "$pre$n$end"
    n=$((n+1))
done

