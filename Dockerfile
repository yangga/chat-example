# Data Service Docker

FROM node:10.14.1
LABEL maintainer="yangga0070@gmail.com"
LABEL version="0.0.1"
LABEL description="chat-example"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . .

RUN npm install

# Run the command on container startup
COPY --chown=1000:0 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
