local opts = { noremap = true, silent = true }
local opts_ = { noremap = false, silent = false }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Select all & Copy
keymap("n", "<S-p>", ":1<CR><S-v><S-g>y", opts)

-- ESC*2 でハイライトやめる
keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

keymap("n", "<C-_>", "gcc",opts_)
keymap("v", "<C-_>", "gc",opts_)
keymap("i", "<C-_>", "<Esc>gcca",opts_)

-- コンマの後に自動的にスペースを挿入
keymap("i", ",", ",<Space>", opts)
keymap("i", ";", ";<Space>", opts)

-- Select Tab on Vim-Airline
keymap("n", "<C-p>", "<Plug>AirlineSelectPrevTab", opts_)

-- NERD Tree Settings
keymap("n", "<C-e>", ":NERDTreeToggle<CR>", opts_)

keymap("n", "<F5>", ":w<CR>:!python %<CR>", opts_)
keymap("i", "<F5>", "<Esc>:w<CR>:!python %<CR>", opts_)
keymap("n", "<F4>", ":w<CR>:!processing-java --sketch=C:/Users/kpp01/Documents/Processing/psystem02 --run<CR>", opts_)
keymap("i", "<F4>", "<Esc>:w<CR>:!processing-java --sketch=C:/Users/kpp01/Documents/Processing/psystem02 --run<CR>", opts_)

-- keymap("n", "<F5>", ":w<CR>:!g++ % -o main && main<CR>", opts_)
-- keymap("i", "<F5>", "<Esc>:w<CR>:!g++ % -o main && main<CR>", opts_)
