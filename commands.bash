#Remove wrongly created links on repos (should only be links on modules)
#Shold be run in the directory where links on modules were created
find -L . -name '__openerp__.py' | rev | awk -F '/' '{print $3}' | less | rev | xargs rm

#print linkname of not installable modules (these links must be removed)
find -L . -name '__openerp__.py' -exec grep -q "'installable': False" {} \; -print | sed 's/\/__openerp__.py//g'
