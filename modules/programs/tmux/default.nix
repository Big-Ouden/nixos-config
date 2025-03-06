{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "tmux-256color";
    historyLimit = 100000;
    plugins = with pkgs;
      [
        tmuxPlugins.better-mouse-mode
        tmuxPlugins.resurrect
        tmuxPlugins.continuum
        tmuxPlugins.vim-tmux-navigator
        tmuxPlugins.copycat
        tmuxPlugins.sidebar
        tmuxPlugins.open
        tmuxPlugins.online-status
        tmuxPlugins.tmux-thumbs
        tmuxPlugins.gruvbox
        tmuxPlugins.jump
        tmuxPlugins.tmux-fzf
        tmuxPlugins.tmux-powerline


      ];
    extraConfig = ''
      set -g @resurrect-strategy-vim 'session'
      set -g @resurrect-strategy-nvim 'session'
      set -g @resurrect-capture-pane-contents 'on'

      set -g @continuum-restore 'on'
      set -g @continuum-boot 'on'
      set -g @continuum-save-interval '10'
    '';

  };
}
