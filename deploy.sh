#! /bin/bash
# Deploy script to DO server
FOLDER="../var/www/genox.io/html"

sshpass -p $PERSONAL_SITE sftp root@$SITEIP << !
cd $FOLDER
put -r css/
put -r font-awesome/
put -r fonts/
put -r img/
put -r js/
put index.html
!
echo 'Deploy complete!'
