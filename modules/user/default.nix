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
    # Include user config
    ./user.nix

  ];
}
