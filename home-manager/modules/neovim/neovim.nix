{ config, pkgs, inputs, ... }:

{

 nixpkgs = {
    overlays = [
      (final: prev: {
        vimPlugins = prev.vimPlugins // {
          own-onedark-nvim = prev.vimUtils.buildVimPlugin {
            name = "onedark";
            src = inputs.plugin-onedark;
          };
        };
      })
    ];
  };




  programs.neovim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;
    withPython3 = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs;  [
      lua-language-server
      #rnix-lsp

      xclip
      wl-clipboard
      python3
      python3Packages.pynvim
      python3Packages.std2
    ];

    plugins = with pkgs.vimPlugins; [

      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugin/lsp.lua;
      }

      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
      }

      neodev-nvim

      nvim-cmp 
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugin/cmp.lua;
      }

        coq_nvim coq-artifacts coq-thirdparty

      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugin/telescope.lua;
      }

      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets


      lualine-nvim
      nvim-web-devicons

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-python
          p.tree-sitter-json
        ]));
        config = toLuaFile ./plugin/treesitter.lua;
      }

      vim-nix

      {
        plugin = onedark-nvim;
        config = toLuaFile ./plugin/onedark.lua;
      }
    ];



    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
    '';

    # extraLuaConfig = ''
    #   ${builtins.readFile ./options.lua}
    #   ${builtins.readFile ./plugin/lsp.lua}
    #   ${builtins.readFile ./plugin/cmp.lua}
    #   ${builtins.readFile ./plugin/telescope.lua}
    #   ${builtins.readFile ./plugin/treesitter.lua}
    #   ${builtins.readFile ./plugin/other.lua}
    # '';
  };



}
