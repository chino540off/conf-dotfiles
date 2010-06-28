#! /bin/bash

source "../functions/functions"
RM=rm

stat_busy "X installation"

for file in xinitrc xsession; do
  if [ -e ~/.$file ]; then
    $RM ~/.$file
  fi
  ln -s $PWD/xinitrc ~/.$file
done

stat_done
