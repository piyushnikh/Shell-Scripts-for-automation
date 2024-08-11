#!/bin/bash

pi=3.14159265359

read -p "Enter the radius : " r

area="$(echo ""$pi" * "$r" * "$r"" | bc -l)"

printf "%.3f \n" "$area"
