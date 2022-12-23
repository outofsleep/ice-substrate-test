FROM docker.io/library/ubuntu:20.04

LABEL description="Snow Docker image" \
        maintainer="Web3 Labs" \
        io.parity.image.type="builder"
RUN mkdir /snow/ice-substrate/target/release/ && \
    cd /snow/ice-substrate/target/release/  && \
    wget https://github.com/web3labs/ice-substrate/releases/download/v0.4.58/ice-node && \
    chmod +x /snow/ice-substrate/target/release/ice-node

COPY /snow/ice-substrate/target/release/ice-node /usr/local/bin

RUN useradd -m -u 1000 -U -s /bin/sh -d /snow snow && \
        mkdir -p /data /snow/.local/share && \
        chown -R snow:snow /data && \
        ln -s /data /snow/.local/share/snow && \
# unclutter and minimize the attack surface
        rm -rf /usr/bin /usr/sbin && \
# check if executable works in this container
        /usr/local/bin/ice-node --version

USER snow

EXPOSE 30333 9933 9944 9615
VOLUME ["/data"]

ENTRYPOINT ["/usr/local/bin/ice-node"]
