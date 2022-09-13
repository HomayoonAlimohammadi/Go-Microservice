FROM alpine:3.16.2

RUN mkdir /app

COPY authApp /app

CMD ["/app/authApp"]