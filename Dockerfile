FROM alpine:3.6

RUN apk add --no-cache openssh-client
COPY known_hosts /root/.ssh/
CMD ssh -T git@github.com
