# Docker
# https://console.cloud.google.com/gcr/images/kaggle-images/GLOBAL/python
# Specified latest tag, v75 in April, 2020
FROM gcr.io/kaggle-images/python:v75


# pip
# https://pip.pypa.io/en/stable/reference/pip_install/#cmdoption-u
RUN pip install -U pip && \
    pip install flake8


# apt-get
RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y sudo


# Node.js for jupyterlab extension
# https://github.com/nodesource/distributions#installation-instructions
# Refered "Node.js v12.x:" instructions
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
    sudo apt-get install -y nodejs


# jupyter lab extensions
RUN jupyter labextension install @jupyterlab/toc && \
    jupyter labextension install jupyterlab-flake8 && \
    jupyter labextension install @lckr/jupyterlab_variableinspector
