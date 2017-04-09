FROM node

# Build app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install -g yarnpkg
RUN yarn
#ENV NODE_ENV production

EXPOSE 3333

CMD [ "yarn","start:prod"]
