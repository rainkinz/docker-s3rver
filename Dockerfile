FROM mhart/alpine-node:latest

RUN apk add --no-cache rsync

# RUN npm install -g s3rver@2.2.3
# RUN npm install aws-sdk

RUN mkdir /data
RUN mkdir /app

WORKDIR /app
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm install

COPY startup.sh /app/startup.sh
EXPOSE 8000

CMD ["sh", "/app/startup.sh"]
