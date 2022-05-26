FROM node:16-bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/list/*

WORKDIR /usr/src/app

COPY . .

RUN npm install

# Start the app
CMD ["node", "--trace-warnings", "src/index.js"]