{ pkgs, ... }:

{
  enable = true;

  monitors.eDP = [
    "1"
    "2"
    "3"
    "4"
    "5"
    "6"
    "7"
    "8"
  ];

  settings = {
    border_width = 2;
    focus_follows_pointer = true;
    pointer_follows_mouse = true;
    window_gap = 12;
  };
}
