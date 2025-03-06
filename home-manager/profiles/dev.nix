{ config, pkgs, ... }:

{
  imports = [
    ../../modules/programs/nixvim
    ../../modules/programs/vscodium
    ../../modules/programs/zen-browser
    ../../modules/programs/discord
    ../../modules/programs/tmux
    ../../modules/programs/firefox
  ];

  home.packages = with pkgs; [
    gcc           # C/C++ Compiler
    # clang         # LLVM Compiler
    python3       # Python environment
    nodejs        # JavaScript runtime
    rustup        # Rust toolchain manager
    go            # Go programming language
    docker        # Containerized development
    podman        # Alternative to Docker
    valgrind      # c memory analyzer
    pnpm

  ];
}
