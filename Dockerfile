FROM golang:1.16.3
WORKDIR /root/src/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o echo-http-codes .

FROM scratch
COPY --from=0 /root/src/echo-http-codes .
ENTRYPOINT ["/echo-http-codes"]
