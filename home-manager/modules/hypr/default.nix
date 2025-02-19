{ pkgs, inputs, lib,...}:
{
  imports = [
    inputs.hyprland.homeManagerModules.default
  ];
  home.file = {
    lib.mkMerge [
      {
        ".config/hypr/hyprland.conf".source=./hyprland.conf;
        ".config/hypr/keybinds.conf".source=./keybinds.conf;
        ".config/hypr/rules.conf".source=./rules.conf;
        ".config/hypr/setup.conf".source=./setup.conf;
        ".config/hypr/startup.conf".source=./startup.conf;
        ".config/hypr/colors.conf".source=./colors.conf;
      }
    ];
  };
}