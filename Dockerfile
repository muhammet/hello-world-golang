FROM golang:latest

# TODO: Use a container to build this and just use binary

COPY ./main.go /go/src/github.com/adamdilek/hello-world-golang/
WORKDIR /go/src/github.com/adamdilek/hello-world-golang
RUN go get ./ && go build -o main . && rm -Rf main.go && mv main /

EXPOSE 80

CMD [ "/main" ]
