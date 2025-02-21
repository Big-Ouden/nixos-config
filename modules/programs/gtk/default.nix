{ pkgs, config, ... }:
let
  monolisa = pkgs.callPackage ../../pkgs/monolisa/monolisa.nix { };
  monolisa-nerd = pkgs.callPackage ../../pkgs/monolisa/monolisa-nerd.nix {
    inherit monolisa;
  };
in
{
  home.sessionVariables.GTK_THEME = "Gruvbox";
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.caskaydia-cove
    nerd-fonts.symbols-only
    twemoji-color-font
    noto-fonts-emoji
    fantasque-sans-mono
    maple-mono
    # monolisa
    # monolisa-nerd
  ];

  gtk = {
    enable = true;
    font = {
      name = "jetbrains-mono";
      size = 12;
    };
    theme = {
      name = "Gruvbox";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "gruvbox-dark-icons-gtk";
      package = pkgs.gruvbox-dark-icons-gtk;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
