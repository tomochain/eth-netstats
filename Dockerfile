FROM node:8-alpine

LABEL maintainer="etienne@tomochain.com"

ENV WS_SECRET ''

WORKDIR /netstats

COPY ./ ./

RUN npm install && \
    npm install -g grunt-cli && \
    grunt

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]

CMD ["start"]
