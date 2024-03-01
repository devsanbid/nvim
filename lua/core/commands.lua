local commands = vim.api.nvim_create_user_command
commands("QuickFix", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("vimgrep " .. word .. " *")
end, {})
