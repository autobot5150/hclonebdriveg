Docker for cloning data and creating a .tfl

The hard work is being done by BigBrianAFK and his tinfoil_gdrive_generator script, for which this docker is based. https://github.com/BigBrainAFK/tinfoil_gdrive_generator

The following enviroment variables are required:
SHARED_DRIVE_ID
FOLDER_ID

The following volume must be mounted with a creds directory insode:
'/app/config'
Create a shared folder on your host system and mount this to /app/config and place your google credentials in a sub-directory called 'creds'  

Example run command:
docker run -d -e SHARED_DRIVE_ID="YOUR_SHARED_DRIVE_ID" -e FOLDER_ID="YOUR_FOLDER_DRIVE_ID" -v HOST_DIRECTORY:/app/config:rw 'hclonebdriveg:latest'