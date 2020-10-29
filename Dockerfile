FROM alpine:latest
LABEL maintainer="autobot5150"

ENV AUTH=FALSE \
    AUTO=TRUE \
    UPLOAD=FALSE \
    UPLOADDRIVE=FALSE \
    OLDFORMAT=FALSE \
    MAKETFL=FALSE \
    KEEPMISSINGID=FALSE \
    DEBUG=FALSE \
    SHARED_DRIVE_ID="" \
    FOLDER_ID="" 

WORKDIR /app
ADD ./start.sh /app

#Permissions on start.sh ; java script modules for the target application ; #install tinfoil_gdrive_generator
RUN chmod +x /app/start.sh \
    && apk add nodejs npm git rclone \
    && npm i googleapis moment node-fetch cli-progress aes-js \
    && git clone https://github.com/BigBrainAFK/tinfoil_gdrive_generator.git

VOLUME /app/config

#ENTRYPOINT [ "/bin/sh", "/app/start.sh" ]