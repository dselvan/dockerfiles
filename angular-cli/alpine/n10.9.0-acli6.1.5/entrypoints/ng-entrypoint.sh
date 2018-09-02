#!/bin/sh

adduser -D -g '' -u ${HOST_USER_UID} huser
su - huser -c 'git config --global user.email "cli@container.com" && \
    git config --global user.name "Angular Cli"'


CMD="cd /workspace && ng ${@}"
su - huser -c "${CMD}"


