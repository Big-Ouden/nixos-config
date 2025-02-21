{ pkgs, lib, ... }:
{
  programs = {
    dconf.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      # pinentryFlavor = "";
    };
    nix-ld.enable = true;
    nix-ld.libraries = with pkgs; [ ];
    git.enable = true;

  };
  environment.systemPackages = with pkgs; [
    acpi
    brightnessctl
    cpupower-gui
    powertop
    dig
    python3
    tailscale
    tree
    home-manager
    vim
  ];



}