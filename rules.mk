_m = dotfiles

$(_m)-dirs =	\
  urxvt_ext

$(_m)-links =	\
  gitconfig	\
  Xdefaults	\
  Xresources	\
  resize_font	\
  xinitrc	\
  xsession	\
  wezterm.lua

$(_m)-dir-urxvt_ext	= ~/.urxvt/ext

$(_m)-link-gitconfig	= ~/.gitconfig
$(_m)-link-Xdefaults	= ~/.Xdefaults
$(_m)-link-Xresources	= ~/.Xresources
$(_m)-link-resize_font	= ~/.urxvt/ext/resize-font
$(_m)-link-xinitrc	= ~/.xinitrc
$(_m)-link-xsession	= ~/.xsession
$(_m)-link-wezterm.lua	= ~/.wezterm.lua

$(_m)-cmds =	\
  git		\
  urxvtc	\
  urxvtd	\
  wezterm
