FROM node:12-alpine3.10
RUN apk --update add --no-cache curl git python alpine-sdk bash autoconf libtool automake
WORKDIR /usr/src/conduit-frontend
COPY package.json package-lock.json ./
RUN npm install
COPY . .
CMD ["npm","start"]