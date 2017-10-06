#!/bin/bash

TOPDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  [[ -n $2 ]] && local SRC=$2 || local SRC=~/.${1}
  ln -fsv $TOPDIR/$1 $SRC
}

link bash_profile 
link bash_profile  ~/.bashrc
link vimrc
