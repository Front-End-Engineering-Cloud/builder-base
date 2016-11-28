# base image for fec-builder

FROM node:6.9.1
MAINTAINER nighca "nighca@live.cn"

WORKDIR /fec

# configure npm
RUN npm config set registry https://registry.npm.taobao.org/

# install yarn
RUN npm i yarn -g

# copy config files
COPY ./package.json ./
COPY ./yarn.lock ./

# install packages
RUN yarn install

# remove config files
RUN rm ./package.json
RUN rm ./yarn.lock

# expose port
EXPOSE 80
