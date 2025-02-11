{ config, pkgs, inputs,... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "simon";
  home.homeDirectory = "/home/simon";


  home.packages = with pkgs; [
	hello
	neovim
	neofetch
	fira-code
	zola
	vscode
  ];

  fonts.fontconfig.enable = true;



  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  imports = [
	inputs.nix-colors.homeManagerModules.default
    	./features/mako.nix
    	./features/alacritty.nix
    	./features/special.nix
  ];

  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;


  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "24.11"; # Please read the comment before changing.
  programs.home-manager.enable = true;

  programs.git = {
	enable = true;
	userName = "simon";
	userEmail = "simon.belier29@gmail.com";
	aliases = {
		gpu = "push";
		gco = "checkout";
		gcm = "commit";
		gcl = "clone";
	};
  };


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



}
