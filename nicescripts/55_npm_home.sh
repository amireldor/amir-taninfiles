#/bin/bash
# Set npm's path to user-space so -g is still fun

if ! grep -q 'npm will install stuff' "$HOME/.bashrc"; then
cat <<NPM >> "$HOME/.bashrc"

# npm will install stuff in user-space => fun!
export PATH=~/.bin:~/.npm-packages/bin:\$PATH
NPM
fi
