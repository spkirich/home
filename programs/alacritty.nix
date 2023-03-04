{ pkgs, ... }:

{
  enable = true;

  settings = {
    colors = {
      primary = {
        background = "0x282828";
        foreground = "0xebdbb2";
      };

      normal = {
        black = "0x282828";
        white = "0xa89984";

        red = "0xcc241d";
        green = "0x98971a";
        blue = "0x458588";

        cyan = "0x689d6a";
        magenta = "0xb16286";
        yellow = "0xd79921";
      };

      bright = {
        black = "0x928374";
        white = "0xebdbb2";

        red = "0xfb4934";
        green = "0xb8bb26";
        blue = "0x83a598";

        cyan = "0x8ec07c";
        magenta = "0xd3869b";
        yellow = "0xfabd2f";
      };
    };

    window = {
      opacity = 0.75;

      padding = {
        x = 4;
        y = 4;
      };
    };
  };
}
