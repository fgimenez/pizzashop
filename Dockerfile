FROM golang:1.8-alpine

RUN mkdir -p /go/src/github.com/fgimenez/pizzashop

ADD main.go /go/src/github.com/fgimenez/pizzashop
ADD public /go/src/github.com/fgimenez/pizzashop/public

WORKDIR /go/src/github.com/fgimenez/pizzashop

RUN go install github.com/fgimenez/pizzashop

ENTRYPOINT ["/go/bin/pizzashop"]

EXPOSE 8080
