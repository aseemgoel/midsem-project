From node

ADD . /
WORKDIR /

RUN npm --version
RUN npm build

EXPOSE 3000
CMD ["node", "server.js"]

