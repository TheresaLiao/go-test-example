FROM golang:1.11.2-alpine
RUN apk update && apk upgrade
RUN apk add --no-cache git
RUN apk add --no-cache ffmpeg
RUN apk add build-base

RUN go get github.com/op/go-logging
RUN go get -u github.com/gin-gonic/gin
RUN go get github.com/lib/pq
RUN go get -u github.com/jinzhu/gorm
RUN go get github.com/iawia002/annie
RUN go get github.com/stretchr/testify/assert

RUN mkdir -p /app
WORKDIR /app

ADD . /app

RUN cd /app
RUN go build -o main
EXPOSE 8080
CMD go test
CMD /app/main
