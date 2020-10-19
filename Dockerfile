FROM alpine:latest
WORKDIR /usr/src/app

# Install NodeJS
RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
RUN VERSION=node_14.x
RUN DISTRO="$(lsb_release -s -c)"
RUN echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
RUN echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install -y nodejs && apt-get clean

#Install Yarn
RUN apk add yarn
RUN export PATH="$PATH:`yarn global bin`"

