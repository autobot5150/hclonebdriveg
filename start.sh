#!/bin/sh
#########################################################
#   start.sh , Used to run tinfoil_gdrive_generator     #
#   with the user supplied enviroment variables         #
#########################################################

#Copy credentials from host volume to working directory
cp /app/config/creds/* /app/tinfoil_gdrive_generator

#Execute index script
cd /app/tinfoil_gdrive_generator/ && node index.js -source $SHARED_DRIVE_ID $FOLDER_ID -auto -makeTfl -upload n -uploadDrive n

#Move script output to the host volume
mv /app/tinfoil_gdrive_generator/shop /app/config/shop && mv /app/tinfoil_gdrive_generator/output /app/config/output