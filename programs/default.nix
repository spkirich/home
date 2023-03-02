{ pkgs, ... }:

{
  alacritty = import ./alacritty.nix {
    inherit pkgs;
  };

  git = import ./git.nix {
    inherit pkgs;
  };

  firefox = import ./firefox.nix {
    inherit pkgs;
  };

  home-manager = import ./home-manager.nix {
    inherit pkgs;
  };
}
