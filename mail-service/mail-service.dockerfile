FROM alpine:3.16.2

RUN mkdir /app 

COPY mailApp /app 

CMD ["/app/mailApp"]