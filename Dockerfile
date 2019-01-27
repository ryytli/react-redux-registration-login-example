FROM ryytli/aspnet

FROM node
WORKDIR /source
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080 4000
CMD [ "npm", "start" ]

