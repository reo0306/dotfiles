return {
    "nvim-treesitter/nvim-treesitter",
     dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "rust", "lua", "vim" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end,
 }
