#!/bin/bash

set -e

echo "Updating system and installing required packages..."

sudo apt update && sudo apt upgrade -y

# Install system packages
sudo apt install -y stow i3 rofi feh zsh git curl wget unzip build-essential \
    kitty polybar

# Ghostty installation
echo "Installing Ghostty..."
# Example placeholder – replace with the latest release if available
GHOSTTY_DIR="$HOME/.local/bin"
mkdir -p "$GHOSTTY_DIR"

# Download latest ghostty binary (adjust architecture as needed)
wget -O "$GHOSTTY_DIR/ghostty" https://github.com/ghostty-org/ghostty/releases/latest/download/ghostty-x86_64-unknown-linux-gnu
chmod +x "$GHOSTTY_DIR/ghostty"

# Add to PATH if not already
if ! grep -q "$GHOSTTY_DIR" <<<"$PATH"; then
    echo "export PATH=\"$GHOSTTY_DIR:\$PATH\"" >>~/.bashrc
fi

# Install Oh-My-Zsh non-interactively
echo "Installing Oh-My-Zsh..."
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as default shell
chsh -s "$(which zsh)"

# Install Powerlevel10k
echo "Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Update .zshrc to use powerlevel10k
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Prevent zsh first-time setup message
touch ~/.zshrc.pre-oh-my-zsh

# Prevent i3 config generation prompt
mkdir -p ~/.config/i3
touch ~/.config/i3/config

echo "Done. You may need to restart or re-source your shell config."
