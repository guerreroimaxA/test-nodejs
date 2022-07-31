# FROM node:lts-alpine3.16@sha256:9a2db0008b592cfde1b98aa8972a8051ccb80bb51dde8b06c3a2e3762794e89c
FROM node

RUN apk -U upgrade && apk add --no-cache \
    dumb-init=1.2.5-r1

ENV NODE_ENV=production

WORKDIR /usr/src/app

# COPY --chown=node:node . .

RUN npm ci --only=production

# USER node

EXPOSE 3000

CMD ["dumb-init", "npm", "start"]
