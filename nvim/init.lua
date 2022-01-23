
-- 基础设置
require('basic')
  -- Packer插件管理
require('plugins')
  -- 快捷键映射
require('keybindings')

  -- Packer插件管理
require('plugins')

  --onedark主题颜色
--第一种写法--
--vim.g.onedark_style = 'deep'
--vim.cmd[[colorscheme onedark]]
--第二种写法--
--require('onedark-init')


--Nightfox theme
--vim.cmd[[colorscheme Nightfox]]

-- require("github-theme").setup({
--   theme_style = "dark",
--   function_style = "italic",
-- 
--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   colors = {hint = "orange", error = "#ff0000"},
-- 
--   transparent = false,
-- 
-- 
-- 
-- 
--   -- Overwrite the highlight groups
--   overrides = function(c)
--     return {
--       htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
--       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
--       -- this will remove the highlight groups
--       TSField = {},
--     }
--   end
-- })
-- 

 --tokyonight·theme·     ■ Line with postspace.
vim.g.tokyonight_transparent = true
vim.cmd[[colorscheme tokyonight]]


require("which-key")
-- 插件配置
require('plugins/treesitter')
require('plugins/telescope')
require('plugins/nvim-autopairs')
require('plugins/nvim-tree')
require('plugins/bufferline')
require('plugins/nvim-colorizer')


  -- lsp
require('lsp/setup')
require('lsp/nvim-cmp')
-- require('lsp/ui')


require("nvim-gps").setup()

require('lualine').setup {options = {theme = "solarized_dark"}}



-- FzfLua --
vim.api.nvim_set_keymap('n', 'ff',"<cmd>lua require('fzf-lua').files()<CR>",{ noremap = true, silent = true })

-- lsp for java
require'lspconfig'.jdtls.setup{ cmd = { 'jdtls' } }

