{ pkgs, ... }:

{
  enable = true;

  keybindings = {
    # Power-off the machine.
    "super + alt + p" = "poweroff";

    # Reboot the machine.
    "super + alt + r" = "reboot";

    # Launch a terminal emulator.
    "super + Return" = "alacritty";

    # Launch a web browser.
    "super + w" = "firefox";

    # Close the focused node.
    "super + c" = "bspc node -c";

    # Kill the focused node.
    "super + shift + c" = "bspc node -k";

    # Focus the node in the given direction.
    "super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";

    # Swap the focused node with the node in the given direction.
    "super + shift + {h,j,k,l}" = "bspc node -s {west,south,north,east}";

    # Focus the given desktop.
    "super + {1-8}" = "bspc desktop -f '^{1-8}'";

    # Send the focused node to the given desktop.
    "super + shift + {1-8}" = "bspc node -d '^{1-8}'";

    # Control the audio volume.
    "XF86Audio{LowerVolume,Mute,RaiseVolume}" = "pamixer {-d 10,-t,-i 10}";

    # Control the monitor brightness.
    "XF86MonBrightness{Up,Down}" = "brightnessctl set {+10%,10%-}";
  };
}
