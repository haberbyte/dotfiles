# My dotfiles

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive.

```terminal
git clone git@github.com:haberbyte/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule update
rake install
./mac-settings.sh # optional
```

After installing, open a new terminal window to see the effects.


## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.irbrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.

