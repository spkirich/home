{ pkgs, ... }:

{
  enable = true;

  font = {
    name = "Iosevka Nerd Font";
    size = 12;
  };

  theme = {
    name = "gruvbox-dark";
    package = pkgs.gruvbox-dark-gtk;
  };

  iconTheme = {
    name = "oomox-gruvbox-dark";
    package = pkgs.gruvbox-dark-icons-gtk;
  };
}
