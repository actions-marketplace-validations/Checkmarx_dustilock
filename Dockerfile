FROM golang:1.13
WORKDIR /src
COPY . .
ENV GO111MODULE=on
RUN go build -o /bin/dustilock
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
