{ pkgs, ... }:
{
  home.packages = (with pkgs; [ waypaper ]);

  xdg.configFile."waypaper/config.ini".text = ''
    [Settings]
    language = fr
    folder = ~/Pictures/wallpapers/others
    monitors = All
    wallpaper = ~/Pictures/wallpapers/wallpaper
    backend = swww
    fill = fill
    sort = name
    color = #ffffff
    subfolders = False
    show_hidden = False
    show_gifs_only = False
    post_command = pkill .waypaper-wrapp
    number_of_columns = 3
    swww_transition_type = any
    swww_transition_step = 90
    swww_transition_angle = 0
    swww_transition_duration = 0.5
    swww_transition_fps = 60
    use_xdg_state = False
  '';
}
