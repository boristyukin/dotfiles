# My dotfiles
To keep dot config files organized and portable. Inspired by [Lars Kappert's post](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789).

I am using [solarized color scheme](http://ethanschoonover.com/solarized) for vim, designed by Ethan Schoonover.

.dircolors was taken [here](https://github.com/seebi/dircolors-solarized).

## Install
My dotfiles are managed by GNU Stow - install it first.
```
sudo yum install stow
cd
git clone https://github.com/boristyukin/dotfiles.git
cd dotfiles
./install.sh
```
## GNOME terminal solarized
Optionally, install solarized theme for Gnome terminal.

> Note, that script below will ask if you want to install .dircolors - skip this step or it will mess it up.

```
cd
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
```

Close terminal and open again to check colors. Run `ls -l` to make sure ls does output colors.

