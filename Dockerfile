FROM golang:stretch
RUN go get -ldflags "-linkmode external -extldflags -static" -u github.com/wallix/awless
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "tail", "-f", "/dev/null"]