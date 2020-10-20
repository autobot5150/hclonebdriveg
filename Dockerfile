FROM alpine:latest
LABEL maintainer="autobot5150"
WORKDIR /app

#Install required software
RUN apk add nodejs npm git rclone

#java script modules for the target application
RUN npm i googleapis moment node-fetch cli-progress aes-js

#install tinfoil_gdrive_generator
RUN git clone https://github.com/BigBrainAFK/tinfoil_gdrive_generator.git
VOLUME /app/tinfoil_gdrive_generator

#Configure the application
ADD ./start.sh /app
RUN chmod +x /app/start.sh

##REMOVE before final version
WORKDIR /app/tinfoil_gdrive_generator
COPY ./credentials.json /app/tinfoil_gdrive_generator
COPY ./gdrive.token /app/tinfoil_gdrive_generator