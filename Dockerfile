FROM ryytli/asprakendus

FROM node
WORKDIR /source
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]

