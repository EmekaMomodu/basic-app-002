FROM golang:alpine

WORKDIR /go/src/app

ADD . .

RUN go build  -o helloWorld

EXPOSE 6111

CMD ["./helloWorld"]

