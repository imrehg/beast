#!/bin/bash

app=hal9000
dir=$(dirname $0)
devices=($(cat "$dir/devices"))

for i in "${devices[@]}"
do
	resin device move $i --application "$app"
done
