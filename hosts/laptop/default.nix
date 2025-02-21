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
    ../../modules/services
    ../../modules/security
    ../../modules/gui
    ../../modules/user
  ];

   networking.hostName = "${host}";

}