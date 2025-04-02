{
    inputs,
    pkgs,
    ...
}:
{
  home.packages = (with pkgs; [
    ## GUI Apps
    # bleachbit                         # cache cleaner
    filezilla
    gimp
    gnome-disk-utility
    libreoffice
    nix-prefetch-github
    pavucontrol                       # pulseaudio volume controle (GUI)
    pitivi                            # video editing
    gnome-calculator                  # calculator
    resources                         # GUI resources monitor
    # soundwireserver
    # thunderbird
    vlc
    # winetricks
    # wineWowPackages.wayland
    # zenity
    obsidian
    # steam
    baobab

    inputs.alejandra.defaultPackage.${system}
  ]);
}
