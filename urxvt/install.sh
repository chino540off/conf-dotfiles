#! /bin/sh

source "../functions/functions"
RM=rm

stat_busy "Xdefaults installation"

for file in Xdefaults; do
  if [ -e ~/.$file ]; then
    $RM ~/.$file
  fi
  ln -s $PWD/$file ~/.$file
done

stat_done
