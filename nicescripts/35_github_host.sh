#!/bin/bash
# Scan GitHub's SSH fingerprint

echo "Getting friendly while fingering github.com"
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
