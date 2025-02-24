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

    # Include nh config
    ./nh.nix
    # Include pipewire config
    ./pipewire.nix
    # Include flatpak config
    ./flatpak.nix
    # Include garbage-collecting config
    ./garbage-collecting.nix
    # Include virualisation config
    ./virtualization.nix


  ];
}
