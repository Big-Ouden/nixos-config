{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    swww #Efficient animated wallpaper daemon for wayland, controlled at runtime
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast #screenshot
    hyprpicker #Wlroots-compatible Wayland color picker that does not suck
    inputs.hyprmag.packages.${pkgs.system}.hyprmag
    grim #Grab images from a Wayland compositor
    slurp #Select a region in a Wayland compositor and print on standard output
    wl-clip-persist #Keep Wayland clipboard even after programs close
    cliphist #Wayland clipboard manager
    wf-recorder #Utility program for screen recording of wlroots-based compositors
    glib
    wayland
    direnv #Shell extension that manages your environment
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}
