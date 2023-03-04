{ pkgs, ... }:

{
  alacritty = import ./alacritty.nix {
    inherit pkgs;
  };

  bash = import ./bash.nix {
    inherit pkgs;
  };

  direnv = import ./direnv.nix {
    inherit pkgs;
  };

  git = import ./git.nix {
    inherit pkgs;
  };

  home-manager = import ./home-manager.nix {
    inherit pkgs;
  };

  rofi = import ./rofi.nix {
    inherit pkgs;
  };

  zathura = import ./zathura.nix {
    inherit pkgs;
  };
}
