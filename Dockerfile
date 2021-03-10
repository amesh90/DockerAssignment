FROM golang
LABEL maintainer="Amira Mamoun amamoun@purdue.edu"

ENV TERM=linux

WORKDIR /app
COPY main.go .

RUN GO111MODULE=off go get -u github.com/gin-gonic/gin

RUN ls
RUN pwd

RUN GO111MODULE=off go build -o main
EXPOSE 8080
ENTRYPOINT ["./main"]