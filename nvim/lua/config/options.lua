-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.listchars.append(
    vim.opt.listchars,
    { eol = "↲", tab = "» ", trail = "·", extends = "<", precedes = ">", conceal = "┊", nbsp = "␣" }
)
