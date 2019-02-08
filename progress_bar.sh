#!/bin/bash



# PARSE ARGS

print_help() {
  echo
  echo 'usage: progress-bar [VALUE], VALUE percentage value, e.g. 10%, 50%, 100%, 110%'
  echo
  echo '  -l long output - allow more than 100%'
  echo '  -s [NUM], NUM number of ■ showed when value is 100 (default: 10)'
  echo '  -c [CHARACTER], CHARACTER characted that is being shown as progress bar tile (default: ■)'
  echo '  -a append numeric value after progress bar'
}

# DEFAULT CONFIG PARAMETERS
allow_more_than_max=false
character=■
granularity=10
append_numeric_after_progressbar=false

while getopts 'als:c:h' OPT ${@:2}; do
  case "$OPT" in
    "l") allow_more_than_max=true ;;
    "s") granularity=$OPTARG ;;
    "c") character=$OPTARG ;;
    "a") append_numeric_after_progressbar=true ;;
    "h") print_help; exit 1 ;;
    "?") print_help >&2; exit 1 ;;
  esac
done



value=$(echo $1 | tr -d %)

let step_size=100/$granularity
let num_of_progress_items=$value/$step_size

printf '|'
for i in $(seq 0 $granularity)
do
  [[ $i -le $num_of_progress_items ]] && printf $character || printf ' '
done  

printf '|'

if [ "$allow_more_than_max" = true ] && [ $num_of_progress_items -gt $granularity ]
then
  let num_of_excess_items=$num_of_progress_items-$granularity
  for i in $(seq 1 $num_of_excess_items)
  do
    printf $character
  done  
fi

if $append_numeric_after_progressbar
then
  printf ' %d%%' $value
fi 



