
FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu20.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG work_dir="/workspace"

#gitのインストール
RUN apt-get update -y \
     && apt-get install -y \
     vim \
     wget \
     curl \
    #  llvm \
    #  libncurses5-dev \
    #  libncursesw5-dev \
    #  xz-utils \
    #  tk-dev \
    #  libffi-dev \
    #  liblzma-dev \
    #  python-openssl \
     git

# コンテナにアクセスした際のデフォルトディレクトリ
WORKDIR ${work_dir}

#install python & pip
RUN apt install -y python3-pip && \
     pip install poetry \
     pip install -y protobuf

