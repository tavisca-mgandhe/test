FROM alpine:3.6
RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli && \
  mkdir /root/.aws && \
  aws --version
CMD /bin/sh -c top
