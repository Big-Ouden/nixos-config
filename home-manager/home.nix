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

    ./modules/nixvim
   inputs.nix-colors.homeManagerModules.default
   ./features/mako.nix
   ./features/alacritty.nix
   ./features/special.nix
 

  ];

  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })



    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "simon";
    homeDirectory = "/home/simon";
    sessionVariables = {
      #EDITOR = "vim";
    };
  };

  # Add stuff for your user as you see fit:
  programs.neovim.enable = true;
  home.packages = with pkgs; [ 
	steam 
    neofetch
    zola
    vscode
	mate.atril
	unzip
	typst
	font-awesome
    libreoffice-qt6-fresh
    zathura
    gcc
    gdb 
    valgrind

  ];


 programs.firefox = {
   enable = true;
   profiles.simon = {

      search.engines = {
        "Nix Packages" = {
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [
              { name = "type"; value = "packages"; }
              { name = "query"; value = "{searchTerms}"; }
            ];
          }];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
        };
      };
      search.force = true;




      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        bitwarden
        ublock-origin
        sponsorblock
        darkreader
        #tridactyl
        youtube-shorts-block
        #languagetool
      ];

    };
};







  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
	enable = true;
        userName = "simon";
        userEmail = "simon.belier29@gmail.com";
        aliases = {
                pu = "push";
                co = "checkout";
                cm = "commit";
                cl = "clone";
                st = "status";
        };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
