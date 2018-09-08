FROM golang:1.11-alpine as base
WORKDIR /go/src/app
COPY . .

RUN apk --no-cache add git
RUN go get -v ./...
RUN apk --update add ca-certificates
# CGO_ENABLED: don’t need to worry about library dependencies
# -ldflags "-s -w" to strip the debugging information
RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o main

FROM scratch
COPY --from=base /go/src/app/main /go-http-microservice
COPY --from=base /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
EXPOSE 8443
CMD ["/go-http-microservice"]
