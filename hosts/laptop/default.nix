{ 
  pkgs, 
  config, 
  ...
}:
{
  import = [
    ../hardware-configuration.nix
    ../../modules/core
  ];
}