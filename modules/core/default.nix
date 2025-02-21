{
  config,
  pkgs,
  inputs,
  username, 
  host, 
  ...
}:
{
  imports = [

    # Include bootloader config
    ./bootloader.nix
    # Include system config
    ./system.nix
    # Include international config
    ./international.nix
    # Include program config
    ./program.nix
    # Include services config
    ./services.nix
    # Include hardware config
    ./hardware.nix



  ];
}
