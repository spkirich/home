{ pkgs, ... }:

{
  home = {
    username = "sery";

    # Nothing fancy here...
    homeDirectory = /home/sery;

    packages = with pkgs; [
      brightnessctl
      pamixer
    ];

    stateVersion = "22.11";
  };

  programs = import ./programs {
    inherit pkgs;
  };

  services = import ./services {
    inherit pkgs;
  };

  xsession = import ./xsession {
    inherit pkgs;
  };
}
