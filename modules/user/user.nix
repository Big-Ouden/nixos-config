{
  pkgs,
  inputs,
  username,
  host,
  ...
}:
{
  #  imports = [ inputs.home-manager.nixosModules.home-manager ];
  #  home-manager = {
  #    useUserPackages = true;
  #    useGlobalPkgs = true;
  #    extraSpecialArgs = { inherit inputs username host; };
  #    users.${username} = {
  #      imports =
  #        if (host == "freya") then
  #          [ ./../../home-manager/freya ]
  #        else
  #          [ ./../../home-manager/surtur/home.nix ];
  #      home.username = "${username}";
  #      home.homeDirectory = "/home/${username}";
  #      home.stateVersion = "24.11";
  #      programs.home-manager.enable = true;
  #    }; 
  #  };
  users.users.${username} = {
    isNormalUser = true;
    initialPassword = "12345";
    description = "${username}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    packages = with pkgs;[
      kdePackages.kate
    ];
  };
  nix.settings.allowed-users = [ "${username}" ];
}