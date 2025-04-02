{ pkgs, lib, ... }:
{
  programs = {
    steam = {
      enable = true;

      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = false;

      gamescopeSession.enable = true;

      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    # gamescope = {
    #   enable = true;
    #   capSysNice = false;
    # };
    # gamemode.enable = true;
  };
  services.ananicy = {
    enable = true;
    package = pkgs.ananicy-cpp;
    rulesProvider = pkgs.ananicy-cpp;
    extraRules = [
      {
        "name" = "gamescope";
        "nice" = -20;
      }
    ];
  };
  # programs.steam.enable = true;
  # programs.steam.gamescopeSession.enable = true;

  # home.packages = with pkgs; [mangohud protonup-qt lutris bottles heroic];

  # environment.systemPackages = [
  #   pkgs.gamescope
  # ];

}
