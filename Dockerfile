FROM node:8-alpine

LABEL maintainer="etienne@tomochain.com"

ENV WS_SECRET ''

WORKDIR /netapi

COPY ./ ./

RUN npm install && \
    npm install -g grunt-cli && \
    grunt

ENTRYPOINT ["npm", "start"]
