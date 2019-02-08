#!/bin/bash


declare -a arr=(
'progress-bar 10'
'progress-bar 10 -s 80'
'progress-bar 50 -a'
 'progress-bar 150'
'progress-bar 150 -l'
'progress-bar 150 -c blue'
'progress-bar 80 -c brown'
'progress-bar 70 -w 😼'
)


for cmd in "${arr[@]}"
do
  echo $cmd
  eval "./${cmd}"
  echo
done
exit 0
echo 'progress_bar 10'
./progress_bar.sh 10; echo; echo

echo 'progress_bar 10 -s 80'
./progress_bar.sh 10 -s 80; echo; echo

echo 'progress_bar 50 -a'
./progress_bar.sh 50 -a; echo; echo

echo 'progress_bar 150'
./progress_bar.sh 150; echo; echo

echo 'progress_bar 150 -l'
./progress_bar.sh 150 -l; echo; echo

echo 'progress_bar 150 -c blue'
./progress_bar.sh 150 -c blue; echo; echo

echo 'progress_bar 80 -c brown'
./progress_bar.sh 150 -c brown; echo; echo

echo 'progress_bar 70 -w 😼'
./progress_bar.sh 70 -w 😼; echo; echo


