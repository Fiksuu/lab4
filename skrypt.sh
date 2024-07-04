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
