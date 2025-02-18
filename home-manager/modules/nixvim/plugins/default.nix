{
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./barbar.nix
    ./comments.nix
    ./floaterm.nix
    ./harpoon.nix
    ./lsp.nix
    ./lualine.nix
    ./markdown-preview.nix
    #./neorg.nix
    # ./neo-tree.nix
    #./snacks.nix # TODO remove
    #./startify.nix
    ./telescope.nix
    # ./telescope-git-branch.nix
    ./treesitter.nix
    ./oil.nix
    ./noice.nix
    ./web-devicons.nix
    ./which-key.nix
    ./indent-o-matic.nix
    ./cursorline.nix
    # ./copilot-vim.nix
    #./copilot-cmp.nix
    ./presence.nix
    ./csvview.nix
    ./typst-vim.nix
    ./sniprun.nix
    ./neoscroll.nix
    ./wilder.nix
   ./wakatime.nix
    ./lazygit.nix
    ./zen-mode.nix
   ./tmux-navigator.nix
  ];

  programs.nixvim = {
    colorschemes.gruvbox.enable = true;

    plugins = {
      # Lazy loading
      lz-n.enable = true;

      web-devicons.enable = true;

      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
        };
      };

      nvim-autopairs.enable = true;

      colorizer = {
        enable = true;
        settings.user_default_options.names = false;
      };

      oil = {
        enable = true;
        lazyLoad.settings.cmd = "Oil";
      };

      trim = {
        enable = true;
        settings = {
          highlight = false;
          ft_blocklist = [
            "checkhealth"
            "floaterm"
            "lspinfo"
            "neo-tree"
            "TelescopePrompt"
            "harpoon"
          ];
        };
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      hologram-nvim
      dashboard-nvim
      mkdir-nvim
      img-clip-nvim
      typst-preview-nvim
      urlview-nvim
      url-open
      zoxide-vim



    ];



  };
}
