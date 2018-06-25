FROM node:8.11

RUN npm i -g npm@6.0.0 && npm update -g npm

RUN curl -s https://get.docker.com | bash -s

RUN curl -L "https://github.com/docker/compose/releases/download/1.12.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
