-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Undercurl

-- for alacritty
-- vim.cmd([[let &t_Cs = "\e[4:3m]"]])
-- vim.cmd([[let &t_Ce = "\e[4:3m]"]])
-- for wezterm
vim.cmd([[let &t_Cs = "\e[60m"]])
vim.cmd([[let &t_Ce = "\e[24m"]])
vim.opt.termguicolors = true
vim.g.lazyvim_picker = "telescope"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.list = true
vim.opt.listchars = {
  space = "·",
  tab = "· ",
  multispace = "·",
  lead = "·",
  trail = "·",
}
