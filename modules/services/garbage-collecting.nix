{
  pkgs,
  lib, 
  ...
}:
{
  # Automatic updating
  system.autoUpgrade.enable = true;
  system.autoUpgrade.dates = "weekly";

  # Automatic cleanup
  # nix.gc.automatic = true;
  # nix.gc.dates = "daily";
  # nix.gc.options = "--delete-older-than 15d";
  nix.settings.auto-optimise-store = true;
}