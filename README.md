# My dotfiles

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive.

```terminal
git clone git://github.com/habermann24/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule update
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.


## Features

I normally place all of my coding projects in ~/word, so this directory can easily be accessed (and tab completed) with the "c" command.

```terminal
c railsca<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```terminal
h doc<tab>
```

There are several features enabled in Ruby's irb including history and completion. Many convenience methods are added as well such as "ri" which can be used to get inline documentation in IRB. See irbrc file for details.


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
