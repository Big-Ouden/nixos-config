# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    #./modules/neovim/neovim.nix

    ./modules/nixvim            # text editor
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



    ./packages.nix # other packages

   inputs.nix-colors.homeManagerModules.default
   ./features/mako.nix
   ./features/alacritty.nix
   ./features/special.nix


  ];

  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  # nixpkgs = {
  #   # You can add overlays here
  #   overlays = [
  #     # If you want to use overlays exported from other flakes:
  #     # neovim-nightly-overlay.overlays.default

  #     # Or define it inline, for example:
  #     # (final: prev: {
  #     #   hi = final.hello.overrideAttrs (oldAttrs: {
  #     #     patches = [ ./change-hello-to-hi.patch ];
  #     #   });
  #     # })



  #   ];
  #   # Configure your nixpkgs instance
  #   config = {
  #     # Disable if you don't want unfree packages
  #     allowUnfree = true;
  #     # Workaround for https://github.com/nix-community/home-manager/issues/2942
  #     allowUnfreePredicate = _: true;
  #   };
  # };

  # TODO: Set your username
  # home = {
  #   username = "simon";
  #   homeDirectory = "/home/simon";
  #   sessionVariables = {
  #   };
  # };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [

  # ];
  # Enable home-manager and git
  # programs.home-manager.enable = true;


  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
