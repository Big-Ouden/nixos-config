{ config, pkgs, ... }:

{
  imports = [
    ../../modules/gaming
    # ../../modules/programs/moonlight-qt
  ];

  # home.packages = with pkgs; [
  #   # steam          # Steam client
  #   lutris         # Game launcher
  #   wine           # Windows compatibility layer
  #   winetricks     # Windows libraries for Wine
  #   mangohud       # FPS overlay
  #   gamescope      # Fullscreen gaming compositor
  #
  # ];
}
