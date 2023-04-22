FROM ubuntu:latest

RUN apt update && \
    apt -y upgrade && \
    apt install -y curl

WORKDIR /root

COPY script.sh .

CMD ["/bin/bash","script.sh"]