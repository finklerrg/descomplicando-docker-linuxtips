FROM golang

WORKDIR /app
ADD . /app

# Added this line so that the image could be built
RUN go env -w GO111MODULE=auto


RUN go build -o mygo

ENTRYPOINT ./mygo