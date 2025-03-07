{
    pkgs,
    lib,
    ...
}:
{
    programs.helix = {
      enable = true;
      # settings = {
      #   theme = "autumn_night_transparent";
      #   editor.cursor-shape = {
      #     normal = "block";
      #     insert = "bar";
      #     select = "underline";
      #   };
      # };
      # languages.language = [{
      #   name = "nix";
      #   auto-format = true;
      #   formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
      # }];
      # themes = {
      #   autumn_night_transparent = {
      #     "inherits" = "autumn_night";
      #     "ui.background" = { };
      #   };
      # };



  home.file = lib.mkMerge [
    {
      ".config/helix/config.toml".source = ./config.toml;
      ".config/helix/languages.toml".source = ./languages.toml;
    }
  ];

    };
}
