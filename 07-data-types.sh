#!/bin/bash

Number1=$1
Number2=$2
Timestamp=$(date)

sum=$(($Number1+Number2))

echo "Number1 + Number2 = $sum"
echo "execution time: $Timestamp"