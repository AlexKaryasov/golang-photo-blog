FROM golang:1.15

WORKDIR /app
COPY go.mod ./
COPY go.sum ./

RUN go mod download
COPY . .

RUN go build -o /golang-photo-blog
EXPOSE 8080
cmd ["/golang-photo-blog"]
MAINTAINER hypotalamus95@gmail.com