FROM ryytli/asprakendus:v1

FROM node
WORKDIR /source
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]

