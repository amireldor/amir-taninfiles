#/bin/bash
# Set npm's path to user-space so -g is still fun

mkdir -p $HOME/.npm-packages

if ! grep -q 'npm will install stuff' "$HOME/.bashrc"; then
cat <<NPM >> "$HOME/.bashrc"

# npm will install stuff in user-space => fun!
export PATH=~/.bin:~/.npm-packages/bin:\$PATH
NPM
fi
