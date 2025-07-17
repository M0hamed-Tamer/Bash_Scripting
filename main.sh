#!/bin/bash

echo "Hello World ----> Mohamed Tamer"

name="Mohamed Tamer"
echo "$name"     
#variables
echo "$name , fared ali"
##########################################
num=3
num3=5
sum=$((num  +  num3))
echo $sum  
############################################
#This is a commit 1

age=4
if [ $age -ge  40  ];then     # -ge  يعني اكبر من 
    echo "You  are an adult."
else 
    echo "You are miner."

fi

if  [ $age -ge  10  ];then     # -ge  يعني اكبر من 
    echo "You  are an adult."

elif  [  $age -ge  5  ]; then
    echo "Wow  You  are a Teenager."

else 
    echo "You are miner."

fi
# ############################| الرمز | المعنى بالعربي       | مثال      | النتيجة |
# | ----- | -------------------- | --------- | ------- |
# | `-ge` | أكبر من أو يساوي (≥) | `5 -ge 3` | صح ✅    |
# | `-gt` | أكبر من (>)          | `5 -gt 3` | صح ✅    |
# | `-lt` | أصغر من (<)          | `5 -lt 3` | غلط ❌   |
# | `-le` | أصغر من أو يساوي (≤) | `3 -le 3` | صح ✅    |
# | `-eq` | يساوي (=)            | `4 -eq 4` | صح ✅    |
# | `-ne` | لا يساوي (≠)         | `4 -ne 5` | صح ✅    |
# ########
a=15
b=20

if [ $a  -le  $b  ]; then
    echo "True"
else 
    echo "No"
fi


age=4
if [ $age -lt 5 ] || [ $age -gt 3 ]; then
    echo "Wow"
fi
