#!/bin/bash

for i in <ip-add1> <ip-add2> <ip-add3> <ip-addn>

do

OS=$(cat /etc/os-release | awk 'NR == 3' | cut -d "=" -f 2)

VERSION=$(cat /etc/os-release | awk 'NR == 2'| cut -d "=" -f 2)

echo "The operating system is $OS"

echo "The version is $VERSION"

done
