{ pkgs, ... }:

{
  home = {
    username = "sery";

    # Nothing fancy here...
    homeDirectory = /home/sery;

    packages = with pkgs; [
      brightnessctl
      firefox
      pamixer
      pcmanfm
    ];

    stateVersion = "22.11";
  };

  gtk = import ./gtk {
    inherit pkgs;
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
