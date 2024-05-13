#!/bin/bash
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[charm]\nname=Charm\nbaseurl=https://repo.charm.sh/yum/\nenabled=1\ngpgcheck=1\ngpgkey=https://repo.charm.sh/yum/gpg.key" > /etc/yum.repos.d/charm.repo'
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo yum install -y cmake charm gum glow gcc gcc-c++ nodejs waybar rofi code fira-code-fonts cascadia-fonts-all.noarch ripgrep unzip
sudo dnf install -y i3 gcc j4-dmenu-desktop lxappearance  light  picom  alacritty  polybar  autorandr  playerctl  feh  bat  httpie neovim python3-neovim pkg-config wayland-devel libX11-devel libxkbcommon-x11-devel mesa-libGLES-devel mesa-libEGL-devel libXcursor-devel vulkan-headers gcc make git fd-find 1password 1password-cli tailscale
sudo systemctl enable --now tailscaled
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
curl -sS https://starship.rs/install.sh | sudo sh
curl -s "https://get.sdkman.io" | bash
