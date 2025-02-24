{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };


    # Keymaps
    keymaps =
    [
      # oil mapping for file tree
        {
         action = ":Oil<CR>";
         key = "<leader>o";
         options = {
           silent = true;
           noremap = true;
           desc = "Oil Mapping";
         };
        }
      # # Go to definition
      # {
      #   action = ":lua vim.lsp.buf.definition()<CR>";
      #   key = "<leader>gd";
      #   options = {
      #     silent = true;
      #     noremap = true;
      #     desc = "Go to definition";
      #   };
      # }
      # # Go to references
      # {
      #   action = ":lua vim.lsp.buf.references()<CR>";
      #   key = "<leader>gr";
      #   options = {
      #     silent = true;
      #     noremap = true;
      #     desc = "Go to references";
      #   };
      # }
      # # git blame open URL
      # {
      #   action = ":GitBlameOpenCommitURL<CR>";
      #   key = "<leader>gb";
      #   options = {
      #     silent = true;
      #     noremap = true;
      #     desc = "Open git blame URL";
      #   };
      # }
      # lazy git dashboard
        {
         action = ":LazyGit<CR>";
         key = "<leader>g";
         options = {
           silent = true;
           noremap = true;
           desc = "Open lazygit";
         };
        }
      # markdown preview mapping
      {
        action = ":MarkdownPreview<CR>";
        key = "<leader>m";
        options = {
          silent = true;
          noremap = true;
          desc = "Open markdown preview in browser";
        };
      }
      # Telescope search (live grep)
      {
        action = ":Telescope live_grep<CR>";
        key = "<leader>sg";
        options = {
          silent = true;
          noremap = true;
          desc = "Search grep";
        };
      }
      # Telescope search buffers
      {
        action = ":Telescope buffers<CR>";
        key = "<leader>sb";
        options = {
          silent = true;
          noremap = true;
          desc = "Search buffers";
        };
      }
      # Telescope buffer
      {
        action = ":Telescope current_buffer_fuzzy_find<CR>";
        key = "<leader>b";
        options = {
          silent = true;
          noremap = true;
          desc = "Search current buffer";
        };
      }
      # Telescope search commands
      {
        action = ":Telescope command_history<CR>";
        key = "<leader>sc";
        options = {
          silent = true;
          noremap = true;
          desc = "Search commands";
        };
      }
      # Telescope search files
      {
        action = ":Telescope find_files<CR>";
        key = "<leader>sf";
        options = {
          silent = true;
          noremap = true;
          desc = "Search files";
        };
      }
      # Telescope search commands
      {
        action = ":Telescope commands<CR>";
        key = "<leader>sc";
        options = {
          silent = true;
          noremap = true;
          desc = "Search commands";
        };
      }
      # Telescope diagnostics
      {
        action = ":Telescope diagnostics<CR>";
        key = "<leader>d";
        options = {
          silent = true;
          noremap = true;
          desc = "Diagnostics";
        };
      }
      # Telescope quickfixlist
      {
        action = ":Telescope quickfix<CR>";
        key = "<leader>q";
        options = {
          silent = true;
          noremap = true;
          desc = "Quickfix list";
        };
      }
      # Telescope undo tree
      {
        action = ":Telescope undo<CR>";
        key = "<leader>u";
        options = {
          silent = true;
          noremap = true;
          desc = "Undo tree";
        };
      }
      # # Diffview open comparing in git
      #   {
      #    action = ":DiffviewOpen<CR>";
      #    key = "<leader>do";
      #    options = {
      #      silent = true;
      #      noremap = true;
      #      desc = "Diffview open";
      #    };
      #   }
      #   # Diffview close comparing in git
      #   {
      #    action = ":DiffviewClose<CR>";
      #    key = "<leader>dp";
      #    options = {
      #      silent = true;
      #      noremap = true;
      #      desc = "Diffview close";
      #    };
      #   }
      # Mapping q for recording macros
      {
        action = "q";
        key = "q";
        options = {
          silent = true;
          noremap = true;
        };
      }

      # Mapping Ctrl+V for block visual mode
      {
        action = "<C-v>";
        key = "<C-v>";
        options = {
          silent = true;
          noremap = true;
        };
      }

      # Buffers
      {
        action = ":BufferNext<CR>";
        key = "<Tab>";
        options = {
          silent = true;
          noremap = true;
          desc = "Next buffer";
        };
      }

      {
        action = ":BufferPrevious<CR>";
        key = "<S-Tab>";
        options = {
          silent = true;
          noremap = true;
          desc = "Prev buffer";
        };
      }


      # disable the spacebar key's default behaviour in normal and visual modes
      {
        mode = [ "n" "v"] ;
        key = "<Space>";
        action = "<Nop>";
        options = {
          silent = true;
          # desc = "disable the spacebar key's default behaviour in normal and visual modes";
        };
      }
      # save file in normal mode
      {
        mode = "n";
        key = "<C-s>";
        action = "<cmd> w <CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Save file";
        };
      }

      # Quit file 
      {
        mode = [ "n"] ;
        key = "<C-q>";
        action = "'<cmd> q <CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Quit file ";
        };
      }
      
      #  Delete single character without copying into register
      {
        mode = [ "n"] ;
        key = "x";
        action = ''"_x'';
        options = {
          silent = true;
          noremap = true;
          desc = "Delete single character without copying into register";
        };
      }
      
      #  Toggle line wrapping
      {
        mode = [ "n" ] ;
        key = "<leader>lw";
        action = "<cmd>set wrap!<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = " Toggle line wrapping";
        };
      }


      # Split windows vertically
      {
        mode = [ "n"] ;
        key = "<leader>v";
        action = "<C-W>v";
        options = {
          silent = true;
          noremap = true;
          desc = "Split windows vertically";
        };
      }

      # Split windows horizontally
      {
        mode = [ "n"] ;
        key = "<leader>h";
        action = "<C-W>s";
        options = {
          silent = true;
          noremap = true;
          desc = "Split windows horizontally";
        };
      }

      # Make split windows equal width & height
      {
        mode = ["n"] ;
        key = "<leader>=";
        action = "<C-W>=";
        options = {
          silent = true;
          noremap = true;
          desc = "Make split windows equal width & height";
        };
      }

      # Close current split windows 
      {
        mode = ["n"] ;
        key = "<leader>x";
        action = ":close<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Close current split windows s";
        };
      }
      

      
      
      #  Navigate between split - k
      {
        mode = [ "n"] ;
        key = "<C-k>";
        action = ":wincmd k<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Navigate between split - k";
        };
      }


       #  Navigate between split - j
      {
        mode = [ "n"] ;
        key = "<C-j>";
        action = ":wincmd j<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Navigate between split - j";
        };
      }

       #  Navigate between split - l
      {
        mode = [ "n"] ;
        key = "<C-l>";
        action = ":wincmd l<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Navigate between split - l";
        };
      }

       #  Navigate between split - h
      {
        mode = [ "n"] ;
        key = "<C-k>";
        action = ":wincmd h<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Navigate between split - h";
        };
      }

      # Open new tab
      {
        mode = [ "n" ] ;
        key = "<leader>to";
        action = ":tabnew<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Open new tab";
        };
      }

      # Close current tab
      {
        mode = [ "n" ] ;
        key = "<leader>tx";
        action = ":tabclose<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Close current tab";
        };
      }

      # Go to the next tab
      {
        mode = [ "n" ] ;
        key = "<leader>tn";
        action = ":tabn<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Go to the next tab";
        };
      }

      # Go to the previous tab
      {
        mode = [ "n" ] ;
        key = "<leader>tp";
        action = ":tabp<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Go to the previous tab";
        };
      }

      





      # # keymap explained
      # {
      #   mode = [ "n" "v"] ;
      #   key = "";
      #   action = "";
      #   options = {
      #     silent = true;
      #     noremap = true;
      #     desc = "";
      #   };
      # }


    ];
  };
}
