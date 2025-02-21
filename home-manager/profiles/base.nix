{ config, pkgs, ... }:

{
  imports = [
    # ../modules/programs/zsh
    ../modules/programs/git
    ../modules/programs/fzf
  ];

  home.packages = with pkgs; [
    neofetch    # System info display
    tree        # Directory structure visualization
    unzip       # Extract zip files
    rsync       # File transfer utility
    jq          # JSON processor
    tmux        # Terminal multiplexer

  ];
}
