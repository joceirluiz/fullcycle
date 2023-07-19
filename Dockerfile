FROM golang:latest AS builder

WORKDIR /go

COPY helloworld.go /go

RUN CGO_ENABLED=0 GOOS=linux go build -o helloworld helloworld.go

FROM scratch
WORKDIR /go
COPY --from=builder /go/helloworld ./
CMD [ "./helloworld" ]
