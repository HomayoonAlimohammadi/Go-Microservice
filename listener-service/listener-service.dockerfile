FROM alpine:3.16.2

RUN mkdir /app 

COPY listenerApp /app 

CMD ["/app/listenerApp"]