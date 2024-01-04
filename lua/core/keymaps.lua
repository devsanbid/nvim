local keymap = vim.keymap.set
local opts = { silent = true }
vim.g.mapleader = " "

--remove keymap default i hate that
keymap('v', "<S-j>", "<Nop>")

-- navigation
keymap('i', "jk", "<ESC>")
keymap('i', "kj", "<ESC>")
keymap('i', "jj", "<ESC>")

-- buffer
keymap('n', '<S-h>', ":bprev<cr>", opts)
keymap('n', '<S-l>', ":bnext<cr>", opts)
keymap('n', '<leader>c', ":bdelete<cr>", opts)

-- file action
keymap('n', '<leader>w', ':wa<cr>', opts)
keymap('n', '<leader>q', ':q!<cr>', opts)

-- up and down
keymap('n', '<M-S-j>', '<C-d>zz')
keymap('n', '<M-S-k>', '<C-u>zz')

-- center while searching
keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

keymap("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

--telescope
keymap('n', '<leader>ff', ":Telescope find_files<cr>", opts)
keymap('n', '<leader><leader>', ":Telescope find_files<cr>", opts)
keymap('n', '<leader>fg', ":Telescope live_grep<cr>", opts)
keymap('n', '<leader>fH', ":Telescope help_tags<cr>", opts)
keymap('n', '<leader>fr', ":Telescope oldfiles<cr>", opts)
keymap('n', '<leader>fh', ":Telescope highlights<cr>", opts)

-- lsp
keymap('n', '<leader>lf', function() vim.lsp.buf.format() end, opts)
keymap('n', "<leader>lr", function() vim.lsp.buf.rename() end, opts)
keymap('n', "<leader>la", function() vim.lsp.buf.code_action() end, opts)
keymap('n', "<leader>li", ":LspInfo<cr>", opts)
keymap('n', "<leader>lI", ":LspInstall<cr>", opts)
keymap('n', "<leader>lm", ":Mason<cr>", opts)

--explore
keymap('n', "<leader>e", ":Neotree toggle reveal_force_cwd<cr>", opts)



--edit files
keymap('n', "<leader>sm", ":e ~/.config/nv/lua/core/init.lua<cr>", opts)
keymap('n', "<leader>sk", ":e ~/.config/nv/lua/core/keymaps.lua<cr>", opts)
keymap('n', "<leader>so", ":e ~/.config/nv/lua/core/options.lua<cr>", opts)
keymap('n', "<leader>sa", ":e ~/.config/nv/lua/core/autocmds.lua<cr>", opts)
keymap('n', "<leader>sh", ":e ~/.config/nv/lua/core/highlights.lua<cr>", opts)
keymap('n', "<leader>sp", ":e ~/.config/nv/lua/plugins/init.lua<cr>", opts)


vim.cmd("noremap <up> <nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.cmd("inoremap <Up> <Nop>")
vim.cmd("inoremap <Down> <Nop>")
vim.cmd("inoremap <Left> <Nop>")
vim.cmd("inoremap <Right> <Nop>")
vim.cmd("vnoremap im aBoV")
vim.cmd("nnoremap J 5j")
vim.cmd("nnoremap K 5k")
vim.cmd('nnoremap "" vi"')
vim.cmd("vnoremap am aBjoV")

