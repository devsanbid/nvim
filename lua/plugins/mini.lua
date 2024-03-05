return { -- Autocompletion
  'echasnovski/mini.nvim',
  version = false,
  dependencies = {
    { 'echasnovski/mini.completion', version = false },
    { 'echasnovski/mini.ai',         version = false },
    { 'echasnovski/mini.statusline', version = false },
    { 'echasnovski/mini.surround',   version = false },
  },
  config = function()
    require('mini.completion').setup {
      delay = { completion = 100, info = 1, signature = 50 },

      window = {
        info = { height = 0, width = 0, border = 'none' },
        signature = { height = 25, width = 80, border = 'none' },
      },

      -- Way of how module does LSP completion
      lsp_completion = {
        source_func = 'completefunc',
        auto_setup = true,
      },

      mappings = {
        force_twostep = '<C-Space>',  -- Force two-step completion
        force_fallback = '<A-Space>', -- Force fallback completion
      },
      set_vim_settings = true,
    }

    require('mini.statusline').setup()
    require('mini.ai').setup()
    require('mini.surround').setup()
    local statusline = require 'mini.statusline'
    statusline.setup()
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
