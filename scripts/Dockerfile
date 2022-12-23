FROM ubuntu:20.04
WORKDIR /usr/local/bin/
RUN apt-get update -y && \
        apt-get install -y wget
RUN wget https://github.com/web3labs/ice-substrate/releases/download/v0.4.58/ice-node
RUN chmod +x ice-node
RUN mkdir -p /data
RUN /usr/local/bin/ice-node --version

EXPOSE 30333 9933 9944 9615
VOLUME ["/data"]

ENTRYPOINT ["/usr/local/bin/ice-node"]
