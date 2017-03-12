#!/bin/bash
res=''
while read mdl
do
	res="${mdl},${res}"
done
echo ${res}
