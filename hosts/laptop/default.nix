{ 
  pkgs, 
  config, 
  host, 
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/services/flatpak.nix
    ../../modules/services/garbage-collecting.nix
    ../../modules/services/nh.nix
    ../../modules/services/pipewire.nix
    ../../modules/security
    ../../modules/gui
    ../../modules/user
  ];

   networking.hostName = "${host}";

}