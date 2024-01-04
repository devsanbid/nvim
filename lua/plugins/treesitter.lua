return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
            ensure_installed = { "tsx", "javascript", "typescript", "fish", "bash"
                , "css", "json", "html","prisma" },
          sync_install = true,
          highlight = { enable = true },
            indent = { enable = true },  
            autotag = {
                enable = true,
            }
        })
    end
}
