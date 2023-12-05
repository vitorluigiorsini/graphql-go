FROM golang:1.21

WORKDIR /usr/src/app

COPY . .

RUN apt-get update \
    && apt-get install sqlite3 \
    && go mod tidy

CMD ["tail", "-f", "/dev/null"]
