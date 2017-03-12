find -L /opt/odoo/mainRepo/001_drozdyuk/ -path '*/__openerp__.py' | sed '/\/setup\//d' | sed 's/\/__openerp__.py//' | xargs  -I addir cp -R addir /home/yustas/work/odoo/addons/additional_addons/
