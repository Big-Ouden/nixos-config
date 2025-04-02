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
    ../../modules/gaming
  ];

   networking.hostName = "${host}";

}
