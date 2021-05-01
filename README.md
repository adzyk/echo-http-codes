# Build & Run

```shell
docker run -d -p 8080:8080 kixiro/echo-http-codes
```

or

build:
```shell
docker build -t echo-http-codes .
```

and run:
```shell
docker run -d -p 8080:8080 echo-http-codes
```

# Usage

Open with browser or services
http://<IP>:8080/http?code=NUMBER

there, NUMBER - any http code
