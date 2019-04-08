FROM node:8

WORKDIR /usr/src/app

ENV WS_SECRET s3cr3t

COPY . .
RUN npm install && npm install -g grunt-cli && grunt

EXPOSE  3000
CMD ["npm", "start"]
