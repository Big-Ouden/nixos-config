{pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./zsh_alias.nix
    # ./zsh_keybinds.nix
    # ./p10k
  ];

home.packages = (with pkgs; [ zsh-powerlevel10k ]);



}
