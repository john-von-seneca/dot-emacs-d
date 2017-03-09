#!/bin/zsh

NEODIR="$HOME/neo-human"
GITREPOS="$HOME/repos"

if [[ ! -e ~/.cask ]]; then
    echo "Cloning Cask repo"
    #git clone git@github.com:cask/cask.git ~/.cask
    git clone https://github.com/cask/cask.git ~/.cask
else
    echo "Cask already present"
fi

if [[ $(grep "cask/bin" ~/.zshrc) == "" ]]; then
    echo "Adding \$HOME/.cask/bin to \$PATH in ~/.zshrc"
    echo '' >> ~/.zshrc
    echo "# Added by ~/.emacs.d/install.sh" >> ~/.zshrc
    echo "export PATH=\$HOME/.cask/bin:\$PATH" >> ~/.zshrc
else
    echo "Not updating ~/.zshrc"
fi

export PATH=$HOME/.cask/bin:$PATH

cd ~/.emacs.d
cask install

if [[ ! -e $GITREPOS/prelude ]]; then
    echo "Cloning prelude to ~/repos/prelude"
    #git clone git@github.com:bbatsov/prelude.git $GITREPOS/prelude
    git clone https://github.com/bbatsov/prelude.git $GITREPOS/prelude
else
    echo "Prelude already present"
fi

# For Python / ELPY
# Prerequisite: Install Python as per:
# http://docs.python-guide.org/en/latest/#getting-started
if [[ `uname` == "linux" ]]; then
  pip3 install --user --upgrade elpy flake8 jedi ipython pyflakes
elif [[ `uname` == "Darwin" ]]; then
  pip3 install --user --upgrade elpy flake8 jedi ipython pyflakes
fi

EMACSINIT="$HOME/.emacs"
if [ -L "$EMACSINIT" ]; then
  echo "$EMACSINIT found... backing up to ~/.emacs.d/.emacs.dot-emacs.bkp"
  mv $EMACSINIT ~/.emacs.d/.emacs.dot.emacs.bkp
  ln -s $HOME/.emacs.d/.emacs $EMACSINIT
else
  echo "creating symlink $EMACSINIT ... "
  ln -s $HOME/.emacs.d/.emacs $EMACSINIT
fi
