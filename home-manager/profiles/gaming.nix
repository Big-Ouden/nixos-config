{ config, pkgs, ... }:

{
  imports = [
    ../../modules/programs/gaming
  ];

  home.packages = with pkgs; [
    steam          # Steam client
    lutris         # Game launcher
    wine           # Windows compatibility layer
    winetricks     # Windows libraries for Wine
    mangohud       # FPS overlay
    gamescope      # Fullscreen gaming compositor
  ];
}
