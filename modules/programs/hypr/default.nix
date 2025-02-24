{
  pkgs,
  inputs,
  lib,
  ...
}:
{
  imports = [
    ./variables.nix
    ./hyprlock.nix
    inputs.hyprland.homeManagerModules.default

  ];
  home.file = lib.mkMerge [
    {
      ".config/hypr/hyprland.conf".source = ./hyprland.conf;
      ".config/hypr/keybinds.conf".source = ./keybinds.conf;
      ".config/hypr/rules.conf".source = ./rules.conf;
      ".config/hypr/setup.conf".source = ./setup.conf;
      ".config/hypr/startup.conf".source = ./startup.conf;
      ".config/hypr/colors.conf".source = ./colors.conf;
    }
  ];

  home.packages = with pkgs; [
    swww
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    hyprlock
    inputs.hyprmag.packages.${pkgs.system}.hyprmag
    grim
    slurp
    wl-clip-persist
    cliphist
    wf-recorder
    glib
    xclip
    direnv
  ];

}
