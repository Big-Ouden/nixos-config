{ pkgs,...}:
{
    programs.zsh = {
        enable = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        # promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";


        oh-my-zsh = {
            enable = true;
            plugins = [
                "git"
                "copyfile"
                "copypath"
                "fzf"
                "ssh"
                "tmux"
                "history"
                "history-substring-search"
                "zoxide"
                "zsh-navigation-tools"
                "sudo"
                # "you-should-use"

            ];
            # theme = "powerlevel10k";
        };
        initExtra =''
            source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
        '';
    };
}
