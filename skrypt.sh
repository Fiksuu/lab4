#!/bin/bash
if [[ "$1" == "--date" ]]; then
  date
fi
if [[ "$1" == "--logs" ]]; then
  for i in $(seq 1 100); do
    echo "log$i.txt" > "log$i.txt"
    echo "$(basename "$0")" >> "log$i.txt"
    date >> "log$i.txt"
  done
fi
if [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
  for i in $(seq 1 $2); do
    echo "log$i.txt" > "log$i.txt"
    echo "$(basename "$0")" >> "log$i.txt"
    date >> "log$i.txt"
  done
fi
