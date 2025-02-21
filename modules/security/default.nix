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

    # Include security config
    ./security.nix
    # Include network config
    ./network.nix

  ];
}
