-- set leader key

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true, silent = true }

-- Disable spacebar's default behaviour in normal and visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- clear highlights
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>cs', ':close<CR>', opts) -- close current split window

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Window resizing
vim.keymap.set('n', '<leader><Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<leader><Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<leader><Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<leader><Right>', ':vertical resize +2<CR>', opts)

-- Tabs management
vim.keymap.set('n', '<leader>t', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>w', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>2', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>1', ':tabp<CR>', opts) --  go to previous tab

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Explicitly yank to system clipboard (highlighted and entire row)
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], opts)
vim.keymap.set('n', '<leader>Y', [["+Y]], opts)

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>fg', '<cmd> Telescope live_grep<CR>', opts)

vim.keymap.set('n', '<leader>ef', ':Neotree toggle float<CR>', opts)
vim.keymap.set('n', '<leader>e', ':Neotree toggle position=left<CR>', opts)

