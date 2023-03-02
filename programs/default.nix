{ pkgs, ... }:

{
  alacritty = import ./alacritty.nix {
    inherit pkgs;
  };

  git = import ./git.nix {
    inherit pkgs;
  };
}
