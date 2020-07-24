FROM node:12.14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY . .



EXPOSE 8080
CMD [ "npm", "run", "server:prod" ]