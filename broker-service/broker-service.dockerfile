# Stage 1
FROM golang:1.19-alpine as builder 

RUN mkdir /app

COPY . /app 

WORKDIR /app 

RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

RUN chmod +x /app/brokerApp

# Stage 2
FROM alpine:3.16.2

RUN mkdir /app 

COPY --from=builder /app/brokerApp /app 

CMD ["/app/brokerApp"]