#!/bin/bash

cmd=$1

files=($( ls | grep .*.tex))


for d in "${files[@]}"
do
	$cmd $d
done
