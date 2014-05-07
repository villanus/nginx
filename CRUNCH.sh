#!/bin/bash
cd /XEN-TOOLS/GIT-PULL-HERE 
git pull
echo "*************************"
echo "  1 - Git Pulled New Files"
echo "*************************"

rm -rf /usr/share/nginx/cache*
/etc/init.d/nginx reload
cd /var/log/nginx
rm r *
echo "*************************"
echo "  2 - Clearned Nginx Cache"
echo "*************************"

cd /etc/nginx/
rm nginx.custom.conf
cp /usr/share/nginx/etc-config/nginx.custom.conf /etc/nginx/nginx.custom.conf
echo "***********************************************"
echo "  3 - Reloaded Nginx.custom.conf from repo"
echo "***********************************************"



cd /XEN-TOOLS/GIT-PULL-HERE 
echo ""
echo "DONE "
echo ""
echo ""