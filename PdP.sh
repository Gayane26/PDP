#!/bin/bash
#ex1
#if

username=dell

if grep $username /etc/passwd; then
  echo "user have founded"
  cd /home/dell/bash/
  ls
else
  echo "user hasn't founded"
fi

#ex2
#elif

num1=5
num2=10

if [ $num1 -eq $num2 ]; then
  echo "The are equal"
elif [ $num1 -gt $num2 ]; then
  echo "Num1 is greater than Num2"
elif [ $num1 -lt $num2 ]; then
  echo "Num1 is less then Num2"
else
  echo "nothing is founded"
fi

#ex3
#compare erkarutyun@

first="Cragravorum-C"
second="Cragravorum-bash"

if [ first ] >second; then
  echo "First is longer"
elif [ first ] <second; then
  echo "First is shorter"
elif [ first = second ]; then
  echo "First equal to second"
else
  echo "Nothing has been  founded"
fi

#ex4
#Variable

name="Gay"
echo "I am $name"
lastN="Avanesyan"
echo "$name $lastN"
echo "$USER is $name 's user"
echo "$(whoami) is $name 's user"

mydir=$(pwd)
# kam
mydir2=$(pwd)
echo "$mydir is $name 's directory"

echo " $(pwd) is $name 's directory&path"
echo "$(pwd) is a path"
echo "$(ls) is a content"

#ex5
#math  / Add, Subtract, Multiply, Divide
num1=10
num2=5
num3=$(($num1 + $num2))
num4=$(($num1 * $num2))
echo "$num3"
echo "$num4"
num5=$(($num1 / $num3))
echo "$num5"

#ex6
#loop FOR

for items in First Second Therth Forth Fifth; do
  echo "$items Lesson"
done

IFS=$'\n'
file=text.txt
for items in $(cat $file); do
  echo "$items"
done

#ex7
#filer files and folders

dir=/home/dell/*
for i in $dir; do
  if [ -d "$i" ]; then
    echo "The $i is dir/folder"
  elif [ -f "$i" ]; then
    echo "The $i is a file"
  fi
done

#ex8
#w/ new line
echo "Instigate"
echo "Mobile"

#w/o new line
echo -n "Instigate"
echo -n "Mobile"

#ex9
#echo e/ Tab characters
echo -e "one\ttwo\tthree\tfour"

#ex10
# Printing Strings That Contain Double Quotes
echo "My favorite movie is \"Paradise\""

#ex11
#Write to a file from inside a Script
echo "My favorite movie is \"Paradise\"" >>file.txt

#ex12
#Overwrite  to a file from inside a Script
echo "My favorite movie is \"Exam\"" >./file.txt

#ex12
#Append  to a file from inside a Script
echo "My favorite book is \"100 business gaxtniqner \"" >>./file.txt
echo "xxxx" >>./file.txt

#ex13
#  USER variable
#"$USER" = whoami
ls
whoami
echo "hi"

echo "$USER"
echo "I am $USER"

#ex14
#HOME variable = path(pwd)
var_path=$HOME
echo $var_path

#ex15
## HOSTNAME variable
var_host=$HOSTNAME
echo $var_host

#ex16
# Writing to file in HOME Directory Using HOME Environment Variable
cd $HOME
echo "I like Range Rover" >test.txt

#ex17
# Chown File To Different User, Run ls before, after
sudo chown bob text.txt

#ex18
# Underscore Variable, Touch File, Use Underscore Variable to Append to It
und_var="hi world"
touch first.txt
echo "$und_var" >>new.txt
cat new.txt

#ex19
# Let Command Arithmetic
let a=3 b=7 c=a+b
echo "$a $b $c"

#ex20
# Combine Three or Two Strings In One Line With Variables

var1="Instigate"
var2="Mobile"
var3="Goris"
echo "${var1} ${var2} ${var3}"

#ex21
# Plus Equal Operator Combine Strings
v1="Instigate"
v2="Mobile"
v1+=$v2
echo $v1

#ex22
#check the number of lines of our file
# wc -l file.txt

#ex23
#Create Multi-Line String Variable with HEREDOC
va1=$(
  cat <<"END_HEREDOC"
aystex
Karox
enq grel multiline
string
END_HEREDOC
)
echo "$va1"

#ex23
#Test File has Read Permission
File=file.txt
if [ -w $File ]
then
  echo "$File has write permission"
else
  echo "$File hasn't write permission"
fi

#ex24
#Test File has Write Permission
File=file.txt
if [ -r $File ]
then
  echo "$File has read permission"
else
  echo "$File hasn't read permission"
fi

#ex25
## Test File hHas Execute Permission
if [ -x $File ]
then
  echo "$File has execute permission"
else
  echo "$File hasn't execute permission"
fi


# command to give  Execution Permission