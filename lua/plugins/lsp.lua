return {
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  { -- LSP Support
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    lazy = true,
    config = false,
    keys = {
      { "<leader>i", "<cmd>LspInfo<cr>",    "Lsp Info" },
      { "<leader>I", "<cmd>LspInstall<cr>", "Lsp Install" },
    },
  },

  { -- LSP Config
    "neovim/nvim-lspconfig",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
    },
  },

  { -- Autocompletion
    "echasnovski/mini.nvim",
    version = false,
    dependencies = {
      { "echasnovski/mini.completion", version = false },
    },
    config = function()
      require("mini.completion").setup()
    end,
  },
}
