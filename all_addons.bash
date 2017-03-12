#!/bin/bash
dbname=$1
SearchRoot='/0_addons_proxy_1'
#SearchRoot='/opt/odoo/mainRepo'
mkdir -p ./$dbname
Dest="./$dbname"
#Dest='/home/yustas/work/odoo/dest'

#mylist=''
for modname in `psql -U root -d $dbname -t -c "select name from ir_module_module"`;
#for modname in `psql -U root -d $dbname -t -c "select name from ir_module_module where state='installed'"`;
#while read modname ;
do
mlist=$(find -L "${SearchRoot}" -path  "*/${modname}/__openerp__.py" | sort | sed 's/\/__openerp__.py//g') 
#mlist=$(find -L "${SearchRoot}" -type d -name "${modname}" | sort ) 
	for m in $mlist; 
		do
			echo $m
                        sm=$(echo $m | sed 's/setup\///g')
			if [ $sm != $m ]
                        	then 
					echo "SETUP DETECTED"
					continue
                        fi
                        echo $m
			ln -s $m $Dest/$modname
			break
		done
#find ${SearchRoot} -type d -name "${modname}" -print 
done

