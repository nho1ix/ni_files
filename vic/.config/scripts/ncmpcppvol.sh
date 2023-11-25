#/bin/bash

while getopts 'id?' flag; do
  case "${flag}" in
    i) mpc volume +2 ;;
    d) mpc volume -2 ;;
  esac
done
