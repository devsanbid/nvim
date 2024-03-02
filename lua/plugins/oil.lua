return {
  'stevearc/oil.nvim',
  opts = {
    win_options = {
      wrap = false,
      signcolumn = "no",
      cursorcolumn = false,
      foldcolumn = "0",
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = "nvic",
    },
      skip_confirm_for_simple_edits = true,
        lsp_rename_autosave = true,
          experimental_watch_for_changes = true,
          keymaps = {
            ["g?"] = "actions.show_help",
            ["L"] = "actions.select",
            ["<C-s>"] = "actions.select_vsplit",
            ["<C-h>"] = "actions.select_split",
            ["<C-t>"] = "actions.select_tab",
            ["<C-p>"] = "actions.preview",
            ["<C-c>"] = "actions.close",
            ["<C-r>"] = "actions.refresh",
            ["H"] = "actions.parent",
            ["."] = "actions.open_cwd",
            ["`"] = "actions.cd",
            ["~"] = "actions.tcd",
            ["gs"] = "actions.change_sort",
            ["gx"] = "actions.open_external",
            ["g."] = "actions.toggle_hidden",
            ["g\\"] = "actions.toggle_trash",
          },
            view_options = {
              -- Show files and directories that start with "."
              show_hidden = false,
              -- This function defines what is considered a "hidden" file
              is_hidden_file = function(name, bufnr)
                return vim.startswith(name, ".")
              end,
              -- This function defines what will never be shown, even when `show_hidden` is set
              is_always_hidden = function(name, bufnr)
                return vim.startswith(name, "node_modules")
              end,
              sort = {
                -- sort order can be "asc" or "desc"
                -- see :help oil-columns to see which columns are sortable
                { "type", "asc" },
                { "name", "asc" },
              },
            },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
