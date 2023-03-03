{ pkgs, ... }:

{
  sxhkd = import ./sxhkd.nix {
    inherit pkgs;
  };

  picom = import ./picom.nix {
    inherit pkgs;
  };
}
