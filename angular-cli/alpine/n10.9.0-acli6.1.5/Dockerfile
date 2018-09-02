FROM node:10.9.0-alpine as node-angular-cli

LABEL authors="Deepak Selvan"

ENV HOST_USER_UID=1000
ENV HOST_USER_GID=1000

#Linux setup
RUN apk update \
    && apk add --update alpine-sdk git \
    && apk del alpine-sdk \
    && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
    && npm cache verify \
    && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

#Angular CLI
RUN npm install -g @angular/cli@6.1.5

ADD entrypoints/ /entrypoints/
RUN chmod +x /entrypoints/*

VOLUME /workspace
WORKDIR /workspace

RUN deluser --remove-home node

ENTRYPOINT [ "/entrypoints/ng-entrypoint.sh" ]