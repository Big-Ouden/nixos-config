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

    # Include xserver config
    ./xserver.nix
    # Include wayland config
    ./wayland.nix



  ];
}
