{ pkgs, ... }:

{
  git = import ./git.nix {
    inherit pkgs;
  };
}
