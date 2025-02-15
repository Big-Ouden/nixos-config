{ config, pkgs, ... }:

{
    imports = [
    # ./zsh.nix
    ./zsh_alias.nix
    # ./zsh_keybinds.nix
    ];

    programs = {
        zsh = {
            enable = true;
            oh-my-zsh = {
                enable = true;
                theme = "refined";
                plugins = [
                    "git"

                ];
            };

            enableAutosuggestions = true;
            enableCompletion = true;
            enableSyntaxHighlighting = true;

            plugins = [
                {
                  # Must be before plugins that wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting
                  name = "fzf-tab";
                  src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
                }
                {
                  name = "powerlevel10k";
                  src = pkgs.zsh-powerlevel10k;
                  file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
                }
            ];
        };
    };

    home.file.".zshrc".text = ''
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


ZSH_THEME="refined"
REFINED_CHAR_SYMBOL="⚡"

# Rofi
export PATH=$HOME/.config/rofi/scripts:$PATH
export PATH=$PATH:~/Apps
    '';
}
