{ inputs, pkgs, ... }:
# let
  # _2048 = pkgs.callPackage ../../pkgs/2048/default.nix {};
# in
{
  home.packages = (with pkgs; [
    # _2048

    ## CLI utility
    ani-cli
    binsider
    docfd                             # TUI multiline fuzzy document finder
    eza                               # ls replacement

    fd                                # find replacement
    file                              # Show file information
    gtt                               # google translate TUI
    gtrash                            # rm replacement, put deleted files in system trash
    hexdump
    htop
    killall
    man-pages                         # extra man pages
    ncdu                              # disk space
    nitch                             # systhem fetch util
    openssl
    onefetch                          # fetch utility for git repo
    poweralertd
    programmer-calculator
    ripgrep                           # grep replacement
    shfmt                             # bash formatter
    # swappy                            # snapshot editing tool
    # tdf                               # cli pdf viewer
    # treefmt2                          # project formatter
    tldr
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    unzip
    wget
    # yt-dlp-light
    xdg-utils
    # xxd
    typst
    font-awesome

  ]);
}
