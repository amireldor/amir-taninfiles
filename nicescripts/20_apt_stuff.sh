#!/bin/bash
# Install packages I commonly use for development

echo "Installing interesting packages (apt install)"
sudo apt update
sudo apt install -y \
    git \
    build-essential \
    vim \
    python3 \
    virtualenvwrapper \
    python-dev \
    python-pip \
    python3-pip \
    meld \
    tree \
    npm \
    cmake \
    libtool-bin \
    xclip \
    chromium-browser
