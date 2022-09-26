FROM alpine:3.16.2

RUN mkdir /app 

COPY loggerApp /app 

CMD ["/app/loggerApp"]