{ pkgs, ... }:

let
  background = "#282828";
  foreground = "#ebdbb2";

  red = "#cc241d";
  green = "#98971a";
  blue = "#458588";

  cyan = "#689d6a";
  magenta = "#b16286";
  yellow = "#d79921";

  bright = {
    background = "#3c3836";
  };

  dim = {
    foreground = "#7c6f64";
  };

in
{
  enable = true;

  package = pkgs.polybar.override {
    pulseSupport = true;
  };

  config = {
    "bar/top" = {
      inherit background;
      inherit foreground;

      font-0 = "Iosevka Nerd Font:size=12;2";
      locale = "ru_RU.UTF-8";

      modules-left = "bspwm xwindow";
      modules-center = "date";
      modules-right = "network pulseaudio battery xkeyboard";

      line-size = 2;
    };

    "module/bspwm" = {
      type = "internal/bspwm";

      label-empty = "%name%";
      label-empty-foreground = dim.foreground;
      label-empty-padding = 1;

      label-focused = "%name%";
      label-focused-background = bright.background;
      label-focused-underline = yellow;
      label-focused-padding = 1;

      label-occupied = "%name%";
      label-occupied-padding = 1;

      label-urgent = "%name%";
      label-urgent-underline = red;
      label-urgent-padding = 1;
    };

    "module/xwindow" = {
      type = "internal/xwindow";

      label-maxlen = 80;
      label-padding = 1;
    };

    "module/date" = {
      type = "internal/date";
      date = "%a %d %b %H:%M";
    };

    "module/network" = {
      type = "internal/network";
      interface = "wlp3s0";

      format-connected = "%{F${green}} %{F-} <label-connected>";
      format-connected-underline = green;
      format-connected-padding = 1;

      label-connected = "%essid%";

      format-disconnected = "%{F${yellow}} %{F-} <label-disconnected>";
      format-disconnected-underline = yellow;
      format-disconnected-padding = 1;

      label-disconnected = "nil";
    };

    "module/pulseaudio" = {
      type = "internal/pulseaudio";

      format-muted = "%{F${yellow}} %{F-} <label-muted>";
      format-muted-underline = yellow;
      format-muted-padding = 1;

      label-muted = "mute";

      format-volume = "%{F${green}} %{F-} <label-volume>";
      format-volume-underline = green;
      format-volume-padding = 1;

      label-volume = "%percentage:3%%";
    };

    "module/battery" = {
      type = "internal/battery";

      adapter = "ACAD";
      battery = "BAT1";

      low-at = 20;

      format-charging = "%{F${green}} %{F-} <label-charging>";
      format-charging-underline = green;
      format-charging-padding = 1;

      label-charging = "%percentage:3%%";

      format-discharging = "%{F${yellow}} %{F-} <label-discharging>";
      format-discharging-underline = yellow;
      format-discharging-padding = 1;

      label-discharging = "%percentage:3%%";

      format-full = "%{F${green}} %{F-} <label-full>";
      format-full-underline = green;
      format-full-padding = 1;

      label-full = "%percentage:3%%";

      format-low = "%{F${red}} %{F-} <label-low>";
      format-low-underline = red;
      format-low-padding = 1;

      label-low = "%percentage:3%%";
    };

    "module/xkeyboard" = {
      type = "internal/xkeyboard";

      format = "%{F${yellow}} %{F-} <label-layout>";
      format-underline = yellow;
      format-padding = 1;

      label-layout = "%layout%";
    };
  };

  script = "polybar top &";
}
