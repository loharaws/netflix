FROM node:13-alpine

WORKDIR /usr/frontend

COPY . .

RUN npm install

RUN npm run build


CMD ["sh", "-c", "npm start"]

