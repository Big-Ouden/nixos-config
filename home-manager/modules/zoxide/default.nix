{ pkgs, ... }:
{
  programs.cava = {
    enable = true;
    enableZshIntagration = true;
    enableBashIntegration = true;
        options = [
            "--cmd cd"
        ];
  };


}
