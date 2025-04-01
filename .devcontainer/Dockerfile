FROM ubuntu:24.04

RUN useradd -m -s /bin/bash user

# install package by apt.
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
# install tools for yocto
    build-essential \
    chrpath \
    cpio \
    debianutils \
    diffstat \
    file \
    gawk \
    gcc \
    git \
    iputils-ping \
    libacl1 \
    liblz4-tool \
    locales \
    python3 \
    python3-git \
    python3-jinja2 \
    python3-pexpect \
    python3-pip \
    python3-subunit \
    socat \
    texinfo \
    unzip \
    wget \
    xz-utils \
    zstd \
# install other tools
    sudo \
    locales && \
    apt clean

# gen locale
RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

WORKDIR /home/user

USER user

RUN echo "export LANG=en_US.UTF-8" >> ~/.bashrc && \
    echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc

# try poky build for test
RUN git clone https://github.com/yoctoproject/poky.git -b scarthgap

CMD ["/bin/bash"]