FROM node:11.2.0-alpine
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 
#--only=production

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
