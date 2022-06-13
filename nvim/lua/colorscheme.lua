-- vim.g.everforest_better_performance = 1
-- vim.g.everforest_background = 'soft'
-- vim.g.everforest_transparent_background = 0

-- vim.g.gruvbox_termcolor = 16
-- vim.g.gruvbox_contrast_dark = 'soft'
-- vim.g.gruvbox_italic = 1
-- fix gruvbox_transparent_bg not working
vim.cmd [[autocmd vimenter * highlight Normal guibg=NONE ctermbg=NONE]]
vim.gruvbox_transparent_bg = 1
local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " not found！")
  return
end
