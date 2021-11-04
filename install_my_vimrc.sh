#!/bin/bash
INSTALLDIR=${INSTALLDIR:-"$PWD/vimrc"}
create_symlinks () {
    if [ ! -f ~/.vim ]; then
        echo "Now, we will create ~/.vim and ~/.vimrc files to configure Vim."
        ln -sfn $INSTALLDIR ~/.vim
    fi

    if [ ! -f ~/.vimrc ]; then
        ln -sfn $INSTALLDIR/vimrc ~/.vimrc
    fi
  }

which git > /dev/null
if [ "$?" != "0" ]; then
  echo "You need git installed to install vimified."
  exit 1
fi

which vim > /dev/null
if [ "$?" != "0" ]; then
  echo "You need vim installed to install vimified."
  exit 1
fi

if [ ! -d "$INSTALLDIR" ]; then
    echo "As we can't find Vimified in the current directory, we will create it."
    git clone --depth=1 -b my-vimrc https://github.com/CPWstatic/vimrc.git $INSTALLDIR
    create_symlinks
    cd $INSTALLDIR

else
    echo "Seems like you already are one of ours, so let's update Vimified to be as awesome as possible."
    cd $INSTALLDIR
    git pull origin my-vimrc
    create_symlinks
fi

if [ ! -d "bundle" ]; then
    echo "Now, we will create a separate directory to store the bundles Vim will use."
    mkdir bundle
    mkdir -p tmp/backup tmp/swap tmp/undo
fi

if [ ! -d "bundle/vundle" ]; then
    echo "Then, we install Vundle (https://github.com/gmarik/vundle)."
    git clone https://github.com/gmarik/vundle.git bundle/vundle
fi

vim +BundleInstall +qall 2>/dev/null
