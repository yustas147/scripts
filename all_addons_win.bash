#!/bin/bash
dbname=$1
SearchRoot="u:/work/odoo/addons8/vasya/modules"

mkdir -p ./$dbname
Dest="./$dbname"




#for modname in access_base account_reversal;
#for modname in `psql -U postgres -d $dbname -t -c "select name from ir_module_module where state='installed'"`;
for modname in `cat addons.txt`;
do
#echo $SearchRoot/${modname}
cp -R $SearchRoot/${modname} u:/work/odoo/ct2
done
#mlist=$(find -L "${SearchRoot}" -path  "*/${modname}/__openerp__.py" | sort | sed 's/\/__openerp__.py//g') 
#	for m in $mlist; 
#		do
#			echo $m
#                        sm=$(echo $m | sed 's/setup\///g')
#			if [ $sm != $m ]
#                      	then 
#				echo "SETUP DETECTED"
#				continue
 #                      fi
  #                     echo $m
		
    #                   cp -R $m $Dest/$modname
#                   cp -R $SearchRoot/$modname $Dest/
	#	break
	#done
#done

