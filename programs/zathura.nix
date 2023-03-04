{ pkgs, ... }:

{
  enable = true;

  options = {
    completion-bg = "#504945";
    completion-fg = "#ebdbb2";

    completion-group-bg = "#3c3836";
    completion-group-fg = "#928374";

    completion-highlight-bg = "#83a598";
    completion-highlight-fg = "#504945";

    default-bg = "#282828";
    default-fg = "#ebdbb2";

    font = "Iosevka 12";
    guioptions = "csv";

    highlight-color = "#fabd2f";
    highlight-active-color = "#fe8019";

    index-bg = "#504945";
    index-fg = "#ebdbb2";

    index-active-bg = "#83a598";
    index-active-fg = "#504945";

    inputbar-bg = "#282828";
    inputbar-fg = "#ebdbb2";

    notification-bg = "#282828";
    notification-fg = "#b8bb26";

    notification-error-bg = "#282828";
    notification-error-fg = "#fb4934";

    notification-warning-bg = "#282828";
    notification-warning-fg = "#fabd2f";

    render-loading-bg = "#282828";
    render-loading-fg = "#ebdbb2";

    statusbar-bg = "#504945";
    statusbar-fg = "#ebdbb2";
  };
}
