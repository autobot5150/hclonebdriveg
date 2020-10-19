FROM debian:latest
WORKDIR /app

# Update apt and install system utils
RUN apt-get update
RUN apt-get install -y curl git

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs

##Testing to see if Yarn is required if I call the modules myself
#Install Yarn and modules for the target application
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt install -y yarn
RUN npm i googleapis moment node-fetch cli-progress

#Cleanup local apt cache
RUN apt-get clean

#install tinfoil_gdrive_generator
RUN git clone https://github.com/BigBrainAFK/tinfoil_gdrive_generator.git

#Start the application
WORKDIR /app/tinfoil_gdrive_generator
