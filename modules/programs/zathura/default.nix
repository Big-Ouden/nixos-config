{
  config,
  pkgs,
  ...
}:

with config.colorScheme.palette;
{
  programs.zathura = {
    enable = true;
    options = {
      selection-clipboard = "clipboard";
      incremental-search = "true";
      recolor = "true";
      default-bg = "#${base00}";
      default-fg = "#${base05}";
      completion-bg = "#${base00}";
      completion-fg = "#${base05}";
      completion-highlight-bg = "#${base0E}";
      completion-highlight-fg = "#${base05}";
      statusbar-bg = "#${base00}";
      statusbar-fg = "#${base05}";
      inputbar-bg = "#${base00}";
      inputbar-fg = "#${base05}";
      recolor-darkcolor = "#${base05}";
      recolor-lightcolor = "#${base00}";
      window-height = "800";
      window-width = "600";
      adjust-open = "width";
      smooth-scroll = "true";
      statusbar-home-tilde = "true";
      statusbar-h-padding = "10";
      statusbar-v-padding = "10";
      guioptions = "s";
      font = "Input      10";
    };
  };
}
