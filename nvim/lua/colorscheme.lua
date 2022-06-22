vim.opt.background = "dark"
-- fixed gruvbox can't be trans
-- vim.cmd [[autocmd vimenter * highlight Normal guibg=NONE ctermbg=NONE]]
-- vim.gruvbox_transparent_bg = 1

vim.g.colarized_termcolors = 256
vim.g.solarized_visibility = 'normal' -- low normal(default) high
vim.g.solarized_termtrans = 1 -- 0 or 1
vim.g.solarized_statusline = 'high'
local colorscheme = "solarized8"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " not found！")
  return
end
