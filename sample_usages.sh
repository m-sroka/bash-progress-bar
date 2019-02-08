#!/bin/bash


declare -a arr=(
'progressbar 70%'
'progressbar 70% -s 40'
'progressbar 50% -a'
 'progressbar 150%'
'progressbar 150% -l'
'progressbar 150% -c blue'
'progressbar 80% -c brown'
'progressbar 70% -w 😼'
)

printf '\n\n'
for cmd in "${arr[@]}"
do
  printf '\e[34m  ~ '
  tput sgr0
  echo $cmd
  echo
  printf '     '
  eval "./${cmd}"
  printf '\n\n\n\n'
done
