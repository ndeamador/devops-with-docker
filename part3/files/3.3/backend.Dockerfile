FROM golang:1.16
WORKDIR /usr/src/app
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000
COPY . .
RUN go build &&\
    go test ./... &&\
    useradd -m appuser

USER appuser

EXPOSE ${PORT}
CMD ["./server"]