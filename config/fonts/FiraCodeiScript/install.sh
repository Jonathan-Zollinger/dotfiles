#!/usr/bin/env bash

logfile=~/.config/fonts/FiraCodeiScript/font-install.log
if (!(gum --version &>/dev/null)); then
	if (!(go version &>/dev/null)); then
		echo "go is not installed, cannot install go. exiting."
		exit
	fi
	go install github.com/charmbracelet/gum@v0.13.0
fi
alias status='gum spin --spinner dot --title'
mkdir ~/.local/share/fonts 2>$logfile 
fonts=('Bold' 'Italic' 'Regular')
for font in "${fonts[@]}"; do
  status "downloading Firacode iScript's $font font ..." -- curl "https://github.com/kencrocken/FiraCodeiScript/blob/master/FiraCodeiScript-$font.ttf" > "$HOME/.local/share/fonts/FiraCodeiScript-$font.ttf"
done
status 'updating font cache' -- fc-cache -f -v >> ~/font-install.log
