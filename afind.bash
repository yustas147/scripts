#!/bin/bash
dbname=$1
SearchRoot='/opt/odoo/mainRepo'
mkdir -p ./$dbname
Dest="./$dbname"
#Dest='/home/yustas/work/odoo/dest'

#mylist=''
for modname in `psql -U root -d $dbname -t -c "select name from ir_module_module where state='installed'"`;
#while read modname ;
do
mlist=$(find "${SearchRoot}" -type d -name "${modname}" | sort ) 
	for m in $mlist; 
		do
			echo $m
                        m=$(echo $m | sed 's/setup\///g')
                        echo $m
			ln -s $m $Dest/$modname
			break
		done
#find ${SearchRoot} -type d -name "${modname}" -print 
done

