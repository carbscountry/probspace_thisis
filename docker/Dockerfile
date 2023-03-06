
FROM nvidia/cuda:12.0.1-runtime-ubuntu20.04

ARG work_dir="/workspace"

#gitのインストール
RUN apt-get update -y \
     && apt-get install -y \
    #  make \
    #  build-essential \
    #  libssl-dev \
    #  zlib1g-dev \
    #  libbz2-dev \
    #  libreadline-dev \
    #  libsqlite3-dev \
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

# pyenvをインストール
# ##環境変数の設定
# ENV HOME /root
# ENV PYENV_ROOT $HOME/.pyenv
# ENV PATH $PYENV_ROOT/bin:$PATH
# ## pyenvでインストールするPythonのバージョンを指定
# ARG PYTHON_VERSION="3.9.16"

# RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv
# RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
#     echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
#     echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
# RUN eval "$(pyenv init --path)"
# ## 指定したPythonをインストールしグローバルで認識するように設定
# RUN pyenv install $PYTHON_VERSION && \
#     pyenv global $PYTHON_VERSION

RUN apt-get install -y python3 python3-pip

# Poetry インストール
ENV PYTHONUNBUFFERED=1 \
  PYTHONDONTWRITEBYTECODE=1 \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 \
  POETRY_VERSION=1.2.2 \
  POETRY_HOME="/opt/poetry" \
  POETRY_VIRTUALENVS_CREATE=false \
  PYSETUP_PATH="/opt/pysetup"


RUN pip install poetry \