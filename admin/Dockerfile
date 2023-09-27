FROM node:16-alpine

WORKDIR /usr/frontend

COPY . .

RUN npm install

RUN npm run build


CMD ["sh", "-c", "npm start"]

