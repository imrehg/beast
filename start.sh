#!/bin/bash

echo "rendering image"
fbi -d /dev/fb1 -T 1 -noverbose -a images/resin.png

sleep 9999999
