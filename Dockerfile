FROM alpine:3.18

RUN apk --no-cache add ca-certificates git unzip curl make bash

COPY dist/chart-releaser_linux_amd64_v1/cr /usr/local/bin/cr

# Ensure that the binary is available on path and is executable
RUN cr --help

ENTRYPOINT [ "/usr/local/bin/cr" ]
