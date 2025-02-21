{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # NUR repos
    nur.url = "github:nix-community/NUR";


    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";


    # firefox add ons
    firefox-addons = {
          url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
          inputs.nixpkgs.follows = "nixpkgs";
        };

    # nix-colors
    nix-colors.url = "github:misterio77/nix-colors";

    #nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
      # url = "/home/gaetan/perso/nix/nixvim/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #hyprland
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };

    #zen-browser
    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    #hyprmag
    hyprmag.url = "github:SIMULATAN/hyprmag";

    #yazi plugins : tui file manager
    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };


    # alejandra : The Uncompromising Nix Code Formatter
    alejandra.url = "github:kamadorueda/alejandra/3.0.0";

    # nix gaming
    nix-gaming.url = "github:fufexan/nix-gaming";

    #flatpak
    nix-flatpak.url = "github:gmodena/nix-flatpak";

  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
      username = "bigouden";
      laptop_hostname = "surtur";
      desktop_hostname = "freya";
      vm_hostname = "vm";
  in {

    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
        desktop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ 
            ./hosts/desktop
            
            ];
          specialArgs = {
            host = "${desktop_hostname}";
            inherit self inputs username;
          };
        };
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ 
            
            ./hosts/laptop 
            
            ];
          specialArgs = {
            host = "${laptop_hostname}";
            inherit self inputs username;
          };
        };
        vm = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ 
            ./hosts/vm 
            
            ];
          specialArgs = {
            host = "${vm_hostname}";
            inherit self inputs username;
          };
        };





      # DONE replace with your hostname
      # surtur = nixpkgs.lib.nixosSystem {
      #   specialArgs = {inherit inputs outputs system;};
      #   # > Our main nixos configuration file <
      #   modules = [./nixos/configuration.nix];
      # };
    };

    # Standalone home-manager configuration entrypoint
    # Available through 'home-manager --flake .#your-username@your-hostname'
    homeConfigurations = {
      "${username}@${laptop_hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance

        extraSpecialArgs = {inherit inputs outputs system;};
        # > Our main home-manager configuration file <
        modules = [./home-manager/users/laptop/home.nix];
      };

      "${username}@${desktop_hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance

        extraSpecialArgs = {inherit inputs outputs system;};
        # > Our main home-manager configuration file <
        modules = [./home-manager/users/desktop/home.nix];
      };
      
      "${username}@${vm_hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance

        extraSpecialArgs = {inherit inputs outputs system;};
        # > Our main home-manager configuration file <
        modules = [./home-manager/users/vm/home.nix];
      };
    };
  };
}
