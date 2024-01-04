FROM ubuntu:latest

# Hugo Extendedのバージョンを指定する。
ARG HUGO_VERSION=0.121.1

# SASSを使用しているため、 hugo_extended をダウンロードして使用する必要がある。
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && sudo dpkg --install --skip-same-version hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && rm hugo_extended_${HUGO_VERSION}_linux-amd64.deb
