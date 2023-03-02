{ pkgs, ... }:

{
  sxhkd = import ./sxhkd.nix {
    inherit pkgs;
  };
}
