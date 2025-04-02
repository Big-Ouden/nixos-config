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
    # Include steam config
    ./steam.nix
  ];
}
