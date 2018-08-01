FROM alpine:3.7

WORKDIR /usr/src

RUN apk update
RUN apk add bash
RUN apk add curl
RUN apk add screen

# the two binaries of hydra & keto is not committed in this
# repo. read the project's readme in their respective
# github repo on how to build the binary.
#
# hydra: https://github.com/ory/hydra
# keto: https://github.com/ory/keto
COPY ./bin/hydra /usr/bin
COPY ./bin/keto /usr/bin
COPY ./scripts ./

# env vars
ENV DATABASE_URL memory

ENV HYDRA_PORT 4444
ENV KETO_PORT 4466
ENV HYDRA_URL http://0.0.0.0:$HYDRA_PORT
ENV KETO_URL http://0.0.0.0:$KETO_PORT

ENTRYPOINT "./serve.sh"
