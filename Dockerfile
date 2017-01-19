# base image for fec-builder

FROM node:6.9.1
MAINTAINER nighca "nighca@live.cn"

WORKDIR /fec

# configure npm
# RUN npm config set registry https://registry.npm.taobao.org/

# install yarn
# RUN npm i yarn -g

# update npm
# https://github.com/npm/npm/issues/14042
# RUN curl -L https://npmjs.org/install.sh | sh

# copy config files
COPY ./package.json ./
# COPY ./npm-shrinkwrap.json ./
# COPY ./yarn.lock ./

# install packages
RUN npm install

# remove config files
RUN rm ./package.json
# RUN rm ./npm-shrinkwrap.json
# RUN rm ./yarn.lock

# expose port
EXPOSE 80
