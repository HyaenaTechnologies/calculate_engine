FROM amd64/swift:latest

WORKDIR /hyaena_technologies

COPY ./ ./

RUN swift package resolve
RUN swift package update

ENTRYPOINT ["/bin/linux/hyaena_technologies"]