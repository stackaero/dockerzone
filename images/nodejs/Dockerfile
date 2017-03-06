FROM node:boron

# Creating app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing app dependencies
COPY package.json /usr/src/app/
RUN npm install

COPY server.js /usr/src/app/

EXPOSE 8080
CMD [ "npm", "start" ]