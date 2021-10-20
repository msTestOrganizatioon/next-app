#base image
FROM node:14.18.0-alpine

WORKDIR /workdir

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY pages pages
COPY styles styles
COPY public public
COPY .eslintrc.json .
COPY next.config.js .


RUN yarn build
CMD ["yarn", "start"]