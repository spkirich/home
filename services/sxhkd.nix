{ pkgs, ... }:

{
  enable = true;

  keybindings = {
    "super + Return" = "alacritty";
    "super + w" = "firefox";
    "super + {_,shift + }c" = "bspc node -{c,k}";
    "super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";
    "super + {_,shift + }{1-8}" = "bspc {desktop,node} -{f,d} '^{1-8}'";
  };
}
