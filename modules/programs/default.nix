# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../../modules/programs/nixvim            # text editor
    ./modules/hypr              # window manager
    ./modules/firefox           # browser
    ./modules/fzf               # fuzzy finder
    ./modules/zsh               # shell
    ./modules/kitty             # terminal emulator
    ./modules/waybar            # bar
    ./modules/gtk               # gtk theme
   ./modules/viewnior           # image viewer
   ./modules/zathura            # pdf viewer
    ./modules/rofi              # launcher
    ./modules/swayosd           # brightness / volume wiget
    ./modules/script            # personal scripts
    # ./modules/obsidian          #  obsidian
    ./modules/git               #  git
    ./modules/cava              #  audio visualiser
    ./modules/audacious         #  music player
    ./modules/bat               #  better cat command
    ./modules/btop              #  ressources monitor
    ./modules/discord           #  discord with gruvbox
    # ./modules/gaming            #  packages related to gaming
    ./modules/lazygit           #  lazygit modules
    ./modules/nemo              #  file manager
    ./modules/yazi             #  terminal file manager
    ./modules/swaylock          #  lockscreen
    ./modules/vscodium          #  vscode fork
    ./modules/swaync            #  notification daemon
    ./modules/waypaper          #  GUI wallpaper picker
    ./modules/xdg-mimes         #  xdg config
    ./modules/zen-browser       #  browser
   ./modules/tmux               # terminal multiplexer
   ./modules/zoxide             # better cd command



  ];
}
