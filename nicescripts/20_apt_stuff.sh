#!/bin/bash
# Install packages I commonly use for development

echo "Installing interesting packages (apt install)"
sudo apt update
sudo apt upgrade -y
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
    chromium-browser \
    pkg-config \
    automake \
    p7zip-full
