#!/bin/bash
SearchRoot="u:/work/odoo/addons8/vasya/modules"

#for modname in `psql -U postgres -d $dbname -t -c "select name from ir_module_module where state='installed'"`;
for modname in `cat addons.txt`;
do
echo $modname
cp -R $SearchRoot/${modname} u:/work/odoo/ct2
done
