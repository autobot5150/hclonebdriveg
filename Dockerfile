FROM alpine:latest
WORKDIR /usr/src/app

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y nodejs && apt-get clean

#Install Yarn
RUN apk add yarn
RUN export PATH="$PATH:`yarn global bin`"

