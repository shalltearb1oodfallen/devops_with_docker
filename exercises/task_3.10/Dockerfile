FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-dev \
        build-essential \
        libpq-dev

RUN pip3 install jupyterlab pandas matplotlib numpy scipy scikit-learn

RUN useradd -m -s /bin/bash jupyter_user

USER jupyter_user
WORKDIR /home/jupyter_user

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
