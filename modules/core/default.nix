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
    # Include network config
    ./network.nix
    # Include system config
    ./system.nix
    # Include international config
    ./international.nix
    # Include xserver config
    ./xserver.nix
    # Include nh config
    ./nh.nix
    # Include pipewire config
    ./pipewire.nix
    # Include program config
    ./program.nix
    # Include flatpak config
    ./flatpak.nix
    # Include security config
    ./security.nix
    # Include services config
    ./services.nix
    # Include steam config
    ./steam.nix
    # Include user config
    ./user.nix
    # Include wayland config
    ./wayland.nix
    # Include garbage collecting config



  ];
}
