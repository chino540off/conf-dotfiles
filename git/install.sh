#! /bin/sh

source "../functions/functions"
RM=rm

stat_busy "Git installation"

for file in gitconfig; do
  if [ -e ~/.$file ]; then
    $RM ~/.$file
  fi
  ln -s $PWD/$file ~/.$file
done

stat_done
