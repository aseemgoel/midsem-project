From node

ADD main_modules /
WORKDIR /

RUN npm install
RUN npm build
