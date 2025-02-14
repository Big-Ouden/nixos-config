{
  programs.nixvim = {
    plugins = {
      lsp-format = {
        enable = true;
        lspServersToEnable = "all";
      };

      lsp = {
        enable = true;

        inlayHints = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";
          };
        };

        servers = {
          clangd.enable = true;
          texlab.enable = true;
          # typst_lsp.enable = true;
          asm_lsp.enable = true;
          html.enable = true;
          pyright.enable = true;
          # rnix.enable = true;
          # ocamllsp.enable = true;
          nil_ls.enable = true;
          lua_ls.enable = true;
            
        };
      };
    };
  };
}
