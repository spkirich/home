{ pkgs, ... }:

{
  home = {
    username = "sery";

    # Nothing fancy here...
    homeDirectory = /home/sery;

    stateVersion = "22.11";
  };

  programs = import ./programs {
    inherit pkgs;
  };
}
