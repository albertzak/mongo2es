FROM golang:1.6-alpine

RUN apk add --update git gcc musl-dev

RUN cd $GOPATH \
  && mkdir -p src/github.com/compose pkg \
  && cd src/github.com/compose \
  && git clone https://github.com/albertzak/transporter \
  && cd transporter \
  && go get -a ./cmd/... \
  && go build -a ./cmd/...

RUN mkdir /transporter

COPY application.js /transporter/application.js
COPY config.yml /transporter/config.yml
COPY entry.sh /transporter/entry.sh

RUN chmod +x /transporter/entry.sh

WORKDIR /transporter

ENTRYPOINT /transporter/entry.sh
