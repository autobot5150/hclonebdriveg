FROM debian:latest
WORKDIR /app

# Update apt and install system utils
RUN apt-get update && apt-get install -y curl git && apt-get autoremove && apt-get clean

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install -y nodejs && apt-get autoremove && apt-get clean

#java script modules for the target application
RUN npm i googleapis moment node-fetch cli-progress

#install tinfoil_gdrive_generator
RUN git clone https://github.com/BigBrainAFK/tinfoil_gdrive_generator.git

#Start the application
WORKDIR /app/tinfoil_gdrive_generator
COPY ./credentials.json /app/tinfoil_gdrive_generator
COPY ./gdrive.token /app/tinfoil_gdrive_generator
