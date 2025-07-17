#!/bin/bash
# سكربت شامل للمراجعة على أساسيات Bash

############################################
# ✅ طباعة نص
echo "Hello World ----> Mohamed Tamer"

############################################
# ✅ تعريف متغيرات وطباعة
name="Mohamed Tamer"
echo "$name"
echo "$name, Fared Ali"

############################################
# ✅ العمليات الحسابية (جمع - طرح - ضرب - قسمة)
num1=3
num2=5

sum=$((num1 + num2))
sub=$((num2 - num1))
mul=$((num1 * num2))
div=$((num2 / num1))

echo "Sum: $sum"
echo "Sub: $sub"
echo "Mul: $mul"
echo "Div: $div"

############################################
# ✅ شرط if بسيط
age=4

if [ $age -ge 40 ]; then
    echo "You are an adult."
else 
    echo "You are minor."
fi

############################################
# ✅ شرط متعدد باستخدام if - elif - else
if [ $age -ge 10 ]; then
    echo "You are an adult."
elif [ $age -ge 5 ]; then
    echo "Wow, You are a Teenager."
else 
    echo "You are minor."
fi

############################################
# ✅ المقارنات الرقمية في bash
# -ge : أكبر من أو يساوي (>=)
# -gt : أكبر من (>)
# -lt : أصغر من (<)
# -le : أصغر من أو يساوي (<=)
# -eq : يساوي (=)
# -ne : لا يساوي (!=)

############################################
# ✅ المقارنة بين متغيرين
a=15
b=20

if [ $a -le $b ]; then
    echo "True"
else 
    echo "No"
fi

############################################
# ✅ استخدام OR و AND
if [ $age -lt 5 ] || [ $age -gt 3 ]; then
    echo "Wow from OR"
fi

if [ $age -gt 3 ] && [ $age -lt 10 ]; then
    echo "Wow from AND"
fi

############################################
# ✅ حلقة for loop
for i in {1..5}; do
    echo "Number: $i"
done

############################################
# ✅ حلقة while loop
count=1
while [ $count -le 3 ]; do
    echo "Count is $count"
    count=$((count + 1))
done

############################################
# ✅ جملة case
fruit="apple"

case $fruit in
    "apple")
        echo "It's an apple."
        ;;
    "banana")
        echo "It's a banana."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac

############################################
# ✅ دالة بسيطة (Function)
greet_user() {
    echo "Hello $1, Welcome to Bash Scripting!"
}

greet_user "Mohamed"

############################################
# ✅ قراءة مدخلات من المستخدم
read -p "Enter your name: " user_name
echo "Nice to meet you, $user_name!"

read -p "Enter your age: " user_age
echo "You are $user_age years old."

if [ $user_age -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi

############################################
# ✅ التعامل مع الملفات
file_name="user_info.txt"
echo "Saving your info to $file_name..."

echo "Name: $user_name" > $file_name
echo "Age: $user_age" >> $file_name

echo "Reading data from $file_name..."
cat $file_name


# 🧠 ملاحظات ختامية في السكربت:
# read -p → لقراءة إدخال من المستخدم برسالة.

# function_name () { ... } → تعريف دالة.

# $1, $2 → أول وتاني باراميتر داخل الدالة.

# > → يكتب في ملف ويمسح القديم.

# >> → يضيف في نهاية الملف بدون مسح.

# cat filename → يطبع محتوى الملف.

############################################
# ✅ دالة تقوم بعملية حسابية
add_numbers() {
    result=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $result"
}

add_numbers 10 15

############################################
# ✅ المصفوفات (Arrays)

# تعريف مصفوفة
list=(ahmed mohamed tamer ali fared)

# طباعة كل عنصر باستخدام for
for name1 in "${list[@]}"; do
    echo "Hello: $name1"
done

# طول المصفوفة
echo "Total names in list: ${#list[@]}"

# طباعة عنصر محدد (مثلاً العنصر الثاني)
echo "Second name is: ${list[1]}"

# إضافة عنصر للمصفوفة
list+=("youssef")
echo "Added 'youssef' to list"

# طباعة المصفوفة بعد الإضافة
echo "Updated list:"
for name1 in "${list[@]}"; do
    echo ">> $name1"
done

############################################
# ✅ نهاية السكربت
echo "✔️ Script ended successfully!"
