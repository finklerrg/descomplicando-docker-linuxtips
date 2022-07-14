FROM golang AS gobuilding

WORKDIR /app
ADD . /app

# Added this line so that the image could be built
RUN go env -w GO111MODULE=auto
RUN go build -o mygo

FROM alpine
WORKDIR /giropops
COPY --from=gobuilding /app/mygo /giropops

ENTRYPOINT ./mygo