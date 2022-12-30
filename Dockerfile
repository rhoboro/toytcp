FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y curl
RUN apt-get install -y \
  build-essential \
  ethtool \
  iproute2 \
  iptables \
  iputils-ping \
  net-tools \
  netcat \
  tcpdump \
  vim

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:$PATH"

COPY setup.sh /setup.sh
RUN chmod +x /setup.sh

ENTRYPOINT ["/setup.sh"]
