{pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./zsh_alias.nix
  ];

  programs.starship = {
    enable = true;
    settings = pkgs.lib.importTOML ./starship.toml;
  };

}
