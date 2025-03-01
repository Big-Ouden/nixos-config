{
  hostname,
  config,
  pkgs,
  host,
  ...
}:
{
  programs.zsh = {
    shellAliases = {
      # Utils
      c = "clear";
      cat = "bat";
      code = "codium";
      diff = "delta --diff-so-fancy --side-by-side";
      less = "bat";
      y = "yazi";
      py = "python";
      ipy = "ipython";
      dsize = "du -hs";
      open = "xdg-open";
      space = "ncdu";
      man = "BAT_THEME='default' batman";

      ssh = "TERM=xterm-256color  ssh";

      l = "eza --icons  -a --group-directories-first "; # EZA_ICON_SPACING=2
      ls = "eza --icons   --group-directories-first "; # EZA_ICON_SPACING=2
      ll = "eza --icons  -a --group-directories-first  --no-user --long";
      tree = "eza --icons --tree --group-directories-first";

      # Nixos
      cdnix = "cd ~/nixos-config && code ~/nixos-config";
      # ns = "nom-shell --run zsh";
      # nix-switch = "nh os switch";
      # nix-update = "nh os switch --update";
      # nix-clean = "nh clean all --keep 5";
      # nix-search = "nh search";
      # nix-test = "nh os test";

      # python
      piv = "python -m venv .venv";
      psv = "source .venv/bin/activate";

      # git TODO
    };
  };
}
