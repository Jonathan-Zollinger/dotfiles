# Fira Code iScript

The Regular and Bold face styles are taken from [Fira Code](https://github.com/tonsky/FiraCode) and [Script12](https://www.myfontsfree.com/134618/script12pitchbt.htm).

![image](https://user-images.githubusercontent.com/7041191/30752845-8c8484ce-9f8b-11e7-9df1-1d171b8d5e66.png)
![image](https://user-images.githubusercontent.com/7041191/30753423-41be3e06-9f8d-11e7-930d-9cfdb5b5ee60.png)
![image](https://user-images.githubusercontent.com/7041191/30752894-b5ff4b4a-9f8b-11e7-9908-969829409d08.png)

## Install

```bash
logfile=~/font-install.log
alias status='gum spin --spinner dot --title'
mkdir ~/.local/share/fonts 2>$logfile 
fonts=('Bold' 'Italic' 'Regular')
for font in "${fonts[@]}"; do
  status "downloading Firacode iScript's $font font ..." -- curl "https://github.com/kencrocken/FiraCodeiScript/blob/master/FiraCodeiScript-$font.ttf" > "$HOME/.local/share/fonts/FiraCodeiScript-$font.ttf"
done
status 'updating font cache' -- fc-cache -f -v >> ~/font-install.log
```

In your editor of choice set the font to `Fira Code iScript`.  Also, ensure that the current theme and syntax highlighting utilize italic.

