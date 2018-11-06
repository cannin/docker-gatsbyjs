FROM node:8.11.3-jessie
MAINTAINER cannin

# No prompts
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y curl wget git htop nano links

RUN npm install -g gatsby

ENV LC_ALL=C.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

WORKDIR /site
VOLUME /site

CMD ["/bin/bash"]
