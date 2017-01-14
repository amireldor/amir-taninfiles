#!/bin/bash

# Install packages I commonly use for development

echo "Installing development stuff using with apt (run as root/sudo)..."
apt install \
    git \
    build-essential \
    vim \
    python3 \
    virtualenvwrapper \
    python-dev \
    python-pip \
    python3-pip \
    meld \
    tree

