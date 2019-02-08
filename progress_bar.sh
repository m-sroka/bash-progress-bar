#!/bin/bash

progress-bar() {
  local granularity=$1
  local value=$2

  let step_size=100/$granularity
  let num_of_progress_items=$value/$step_size

  printf '|'
  for i in {0..$granularity}
  do
    [[ $i -le $num_of_progress_items ]] && printf '■' || printf ' '
  done  

  printf '|'

  if [ $num_of_progress_items -gt $granularity ]
  then
    let num_of_excess_items=$num_of_progress_items-$granularity
    for i in {1..$num_of_excess_items}
    do
      printf '■'
    done  
  fi

  printf ' %d%%' $value
}



