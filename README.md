Docker for cloning data and creating a .tfl

The hard work is being done by BigBrianAFK and his tinfoil_gdrive_generator script, for which this docker is based. https://github.com/BigBrainAFK/tinfoil_gdrive_generator


Google creds must be placed in /app/config by way of mounting the volume
-v %HOST_FOLDER%:/app/config

The following variables are required
SHARED_DRIVE_ID
FOLDER_ID