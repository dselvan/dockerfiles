FROM jenkins/jenkins:2.140-alpine

LABEL authors="Deepak Selvan"

# install linux utils 
USER root
RUN apk -v --update add \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    && \
    pip install --upgrade awscli==1.16.1 && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

# drop back to the regular jenkins user
USER jenkins

# install plugins for first use
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# volume for aws credentials
VOLUME /home/jenkins/.aws