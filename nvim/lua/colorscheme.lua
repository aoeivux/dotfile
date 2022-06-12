vim.g.everforest_better_performance = 1
vim.g.everforest_background = 'hard'
vim.g.everforest_transparent_background = 2
vim.opt.background = "dark"
vim.g.gruvbox_termcolor = 16
local colorscheme = "gruvbox"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " not found！")
  return
end
