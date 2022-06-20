local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap
--Remap space as leader key
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"



-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- quickly move
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)

keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)

--macos
keymap("n", "<F5>", ":!open -a Google\\ Chrome %<CR><CR>", opts)
-- keymap("n", "<F5>", ":!open -a Safari %<CR><CR>", opts)

vim.cmd [[
function! HandleURI()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
	  exec "!open \"" . s:uri . "\""
  else
	  echo "No URI found in line."
  endif
endfunction
map <F7> :call HandleURI()<CR>
]]

-- function HandleURL()
--   local url = vim.cmd [[matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')]]
--   print(url)
--   if url ~= "" then
--     vim.cmd([[exec "!open \"" . url . "\""]])
--   else
--     print("No URL found in line.")
--   end
-- end
--
-- keymap("n", "<F7>", "v:lua.HandleURL()", { expr = true, noremap = true })
-- https://github.com/aoeivux/nvim
--open url
--

--" On Windows, open URL under cursor.
-- nnoremap <F8> :!start C:\progra~1\intern~1\iexplore.exe <cfile><CR>
-- nnoremap <F8> :!start C:\progra~1\mozill~1\firefox.exe <cfile><CR>
-- " On Linux, open URL under cursor in Firefox.
-- nnoremap <F8> :silent !firefox <cfile><CR>

--
--open file
--

--windows
--nnoremap <silent> <F5> :update<Bar>silent !start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "file://%:p"<CR>
--linux
--nnoremap <F5> :update<Bar>silent !xdg-open %:p &<CR>
-- nnoremap <F8> :silent !xdg-open <cfile> &<CR>

-- quickly save && quit
keymap("n", "Q", ":q<CR>", opts)
keymap("n", "S", ":w<CR>", opts)

-- FileExpoler

-- no highlight
keymap("n", "<leader>l", ":nohl<cr>", opts)
-- save buffer
keymap("n", "<leader>w", ":w<cr>", opts)

-- exit cur window
keymap("n", "<leader>q", ":q<cr>", opts)

-- delete cur buffer
keymap("n", "<leader>d", ":bdelete<cr>", opts)


-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-n>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-p>", ":BufferLineCyclePrev<CR>", opts)

-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)



-- replace words
vim.cmd(
  [[
" line
  nnoremap <leader>s :s/\<<C-r><C-w>\>//g<left><left>
" global
  nnoremap <leader>S :%s/\<<C-r><C-w>\>//g<left><left>
  
  vnoremap <leader>s :s/\<<C-r><C-w>\>//g<left><left>
" global
  vnoremap <leader>S :%s/\<<C-r><C-w>\>//g<left><left>
]])
