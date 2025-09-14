FROM node:alpine AS stage1

EXPOSE 3000

WORKDIR /app/Docker-project

COPY package*.json .

RUN npm install

FROM stage1 AS final

RUN npm install --production 

COPY . .

CMD ["npm","start"]
