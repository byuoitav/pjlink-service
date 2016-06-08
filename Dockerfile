FROM golang:1.6.2

RUN mkdir -p /go/src/github.com/byuoitav
ADD . /go/src/github.com/byuoitav/pjlink-microservice

WORKDIR /go/src/github.com/byuoitav/pjlink-microservice
RUN go get -d -v
RUN go install -v

CMD ["/go/bin/pjlink-microservice"]

EXPOSE 8005