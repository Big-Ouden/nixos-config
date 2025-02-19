{ pkgs,...}:
{
    programs.zsh = {
        enable = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;



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
            theme = "";
        };
        # initExtra =''
        #     source ~/.p10k.zsh
        # '';
    };
}
