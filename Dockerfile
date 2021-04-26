FROM node:15.14.0-alpine3.13
LABEL version="1.0"
LABEL description="Kubernetes Bootcamp"
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]