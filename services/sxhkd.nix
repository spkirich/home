{ pkgs, ... }:

{
  enable = true;

  keybindings = {
    # Launch a terminal emulator.
    "super + Return" = "alacritty";

    # Launch a heavy file manager.
    "super + shift + n" = "pcmanfm";

    # Launch a web browser.
    "super + w" = "firefox";

    # Make the focused node tiled.
    "super + ctrl + t" = "bspc node -t tiled";

    # Make the focused node floating.
    "super + ctrl + f" = "bspc node -t floating";

    # Make the focused node fullscreen.
    "super + ctrl + s" = "bspc node -t fullscreen";

    # Make the focused node locked.
    "super + ctrl + x" = "bspc node -g locked";

    # Make the focused node sticky.
    "super + ctrl + y" = "bspc node -g sticky";

    # Focus the node in the given direction.
    "super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";

    # Swap the focused node with the node in the given direction.
    "super + shift + {h,j,k,l}" = "bspc node -s {west,south,north,east}";

    # Preselect the given direction for the focused node.
    "super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";

    # Cancel the preselection for the focused node.
    "super + ctrl + Escape" = "bspc node -p cancel";

    # Close the focused node.
    "super + c" = "bspc node -c";

    # Kill the focused node.
    "super + shift + c" = "bspc node -k";

    # Focus the given desktop.
    "super + {1-8}" = "bspc desktop -f '^{1-8}'";

    # Send the focused node to the given desktop.
    "super + shift + {1-8}" = "bspc node -d '^{1-8}'";

    # Control the audio volume.
    "XF86Audio{LowerVolume,Mute,RaiseVolume}" = "pamixer {-d 10,-t,-i 10}";

    # Control the monitor brightness.
    "XF86MonBrightness{Up,Down}" = "brightnessctl set {+10%,10%-}";

    # Power-off the machine.
    "super + alt + p" = "poweroff";

    # Reboot the machine.
    "super + alt + r" = "reboot";
  };
}
