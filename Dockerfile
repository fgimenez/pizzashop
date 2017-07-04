FROM golang:1.8-alpine

RUN mkdir -p /go/src/github.com/fgimenez/tacoshop

ADD main.go /go/src/github.com/fgimenez/tacoshop
ADD public /go/src/github.com/fgimenez/tacoshop/public

WORKDIR /go/src/github.com/fgimenez/tacoshop

RUN go install github.com/fgimenez/tacoshop

ENTRYPOINT ["/go/bin/tacoshop"]

EXPOSE 8080
