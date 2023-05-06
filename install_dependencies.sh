#!/bin/bash
# adds microsoft and charmbracelet repos to yum.repos.d, installs a slew of packages including nvim and its lsp's dependencies. clones my nvim setup to .config/nvim
sudo sh -c 'echo -e "[charm]\nname=Charm\nbaseurl=https://repo.charm.sh/yum/\nenabled=1\ngpgcheck=1\ngpgkey=https://repo.charm.sh/yum/gpg.key" > /etc/yum.repos.d/charm.repo'
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum install -y cmake charm gum glow gcc gcc-c++ nodejs waybar rofi code
sudo dnf install -y i3 gcc j4-dmenu-desktop  lxappearance  light  picom  alacritty  polybar  autorandr  playerctl  feh  bat  httpie neovim python3-neovim pkg-config wayland-devel libX11-devel libxkbcommon-x11-devel mesa-libGLES-devel mesa-libEGL-devel libXcursor-devel vulkan-headers
git clone git@github.com:Jonathan-Zollinger/kickstart.nvim.git ~/.config/nvim
nvim
