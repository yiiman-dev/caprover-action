FROM node:12-alpine

RUN apk add --no-cache git && npm install -g caprover && npm cache clean --force

COPY app/${INPUT_MODE}.sh /${INPUT_MODE}.sh

ENTRYPOINT ["sh","/${INPUT_MODE}.sh"]