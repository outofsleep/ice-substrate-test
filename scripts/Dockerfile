FROM ubuntu:20.04
WORKDIR /usr/local/bin/
RUN apt-get update -y && \
        apt-get install -y wget
RUN wget https://github.com/web3labs/ice-substrate/releases/download/v0.4.58/ice-node
RUN chmod +x ice-node
RUN mkdir /snow
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
