#! /bin/bash
# Deploy script to DO server
FOLDER="../var/www/genox.io/html"

sshpass -p $PERSONAL_SITE sftp root@$SITEIP << !
cd $FOLDER
pwd
ls -lart
put -r css/
put -r img/
put index.html
!
echo 'Deploy complete!'
