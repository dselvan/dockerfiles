#!/bin/sh

adduser -D -g '' -u ${HOST_USER_UID} huser

CMD="cd /workspace && npm ${@}"
su - huser -c "${CMD}"


