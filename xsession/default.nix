{ pkgs, ... }:

{
  enable = true;

  windowManager.bspwm = import ./bspwm.nix {
    inherit pkgs;
  };
}
