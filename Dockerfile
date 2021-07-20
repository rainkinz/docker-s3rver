FROM node:16-alpine

RUN apk add --no-cache rsync

RUN mkdir /data
RUN mkdir /app

WORKDIR /app
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm install

COPY startup.sh /app/startup.sh
EXPOSE 8000

CMD ["sh", "/app/startup.sh"]
