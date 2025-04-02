{
  self,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  # imports = [ inputs.nix-gaming.nixosModules.default ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = [ "https://nix-gaming.cachix.org" ];
      trusted-public-keys = [
        "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
      ];
    };
  };
  nixpkgs = {
    overlays = [ inputs.nur.overlays.default ];
  };

  environment.systemPackages = with pkgs; [
    wget
    git
    gamemode
    mangohud
    protonup-qt
    lutris
    bottles
    heroic
  ];

  environment.sessionVariables = {
    #If your cursor becomes invisible
  	WLR_NO_HARDWARE_CURSORS = "1";
    #Hint electron apps to use wayland
  	NIXOS_OZONE_WL = "1";
  };

  # Configure console keymap
  console.keyMap = "fr";


  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
