FROM debian:latest
WORKDIR /app

##Utilities
#curl is required
RUN apt-get update && apt-get install -y curl && apt-get clean

#git is required
RUN apt-get install -y git

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs && apt-get clean

#Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt install -y yarn
RUN npm i googleapis
RUN npm i moment
RUN npm i node-fetch
RUN npm i cli-progress

#install tinfoil_gdrive_generator
RUN git clone https://github.com/BigBrainAFK/tinfoil_gdrive_generator.git

RUN cd tinfoil_gdrive_generator
