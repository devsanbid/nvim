local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

--remove keymap default i hate that
keymap("v", "<S-j>", "<Nop>")

-- navigation
keymap("i", "jk", "<ESC>")
keymap("i", "JK", "<ESC>")
keymap("i", "Jk", "<ESC>")
keymap("i", "kj", "<ESC>")
keymap("i", "jj", "<ESC>")


keymap("n", "<leader>jm", ":NodeAction<cr>")
keymap("n", "<leader>jj", ":TSJToggle<cr>")

keymap("x", "p", [["_dP]])

keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)

keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#z", opts)

-- center while searching
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

--telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader><leader>", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fH", ":Telescope help_tags<cr>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fh", ":Telescope highlights<cr>", opts)

-- lsp
keymap("n", "<leader>lf", function()
  vim.lsp.buf.format()
end, opts)
keymap("n", "<leader>lr", function()
  vim.lsp.buf.rename()
end, opts)
keymap("n", "<leader>la", function()
  vim.lsp.buf.code_action()
end, opts)
keymap("n", "<leader>li", ":LspInfo<cr>", opts)
keymap("n", "<leader>lI", ":LspInstall<cr>", opts)
keymap("n", "<leader>lm", ":Mason<cr>", opts)

--explore
keymap("n", "<leader>e", ":Neotree toggle reveal_force_cwd<cr>", opts)

--edit files
keymap("n", "<leader>sm", ":e ~/.config/nv/lua/core/init.lua<cr>", opts)
keymap("n", "<leader>sk", ":e ~/.config/nv/lua/core/keymaps.lua<cr>", opts)
keymap("n", "<leader>so", ":e ~/.config/nv/lua/core/options.lua<cr>", opts)
keymap("n", "<leader>sa", ":e ~/.config/nv/lua/core/autocmds.lua<cr>", opts)
keymap("n", "<leader>sh", ":e ~/.config/nv/lua/core/highlights.lua<cr>", opts)
keymap("n", "<leader>sp", ":e ~/.config/nv/lua/plugins/init.lua<cr>", opts)

vim.cmd("vnoremap im aBoV")
vim.cmd('nnoremap "" vi"')
vim.cmd("vnoremap am aBjoV")
