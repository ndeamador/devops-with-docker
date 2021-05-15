FROM alpine:3.13.5

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache git
RUN apk add --update docker


CMD [ "sh", "3-2.sh"]