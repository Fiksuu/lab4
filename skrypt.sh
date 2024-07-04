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
if [[ "$1" == "--help" ]]; then
  echo "--date: Display the current date"
  echo "--logs: Create 100 log files"
  echo "--logs <number>: Create a specified number of log files"
fi
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "--date -d: Display the current date"
  echo "--logs -l: Create 100 log files"
  echo "--logs <number> -l <number>: Create a specified number of log files"
  echo "--error -e <number>: Create a specified number of error files"
  echo "--init: Clone the repository and set PATH"
fi
if [[ "$1" == "--init" ]]; then
  git clone <url-repozytorium> $(pwd)
  export PATH=$(pwd):$PATH
fi
if [[ "$1" == "--error" ]]; then
  count=${2:-100}
  for i in $(seq 1 $count); do
    mkdir -p error$i
    echo "error$i/error$i.txt" > "error$i/error$i.txt"
    echo "$(basename "$0")" >> "error$i/error$i.txt"
    date >> "error$i/error$i.txt"
  done
fi
