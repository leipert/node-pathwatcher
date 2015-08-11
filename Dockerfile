FROM node:0.10
# Add Package To `/root` Dir
ENV HOME /root
ADD . $HOME
WORKDIR /root

ENV DOCKER=true

RUN npm install -g node-gyp

RUN rm -rf node_modules && npm install --unsafe-perm

RUN npm test
