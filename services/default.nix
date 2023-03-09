{ pkgs, ... }:

{
  sxhkd = import ./sxhkd.nix {
    inherit pkgs;
  };

  picom = import ./picom.nix {
    inherit pkgs;
  };

  polybar = import ./polybar.nix {
    inherit pkgs;
  };
}
