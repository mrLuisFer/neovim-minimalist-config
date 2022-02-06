local g = vim.g
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
g.mapleader = ' ' -- Space

-- Custom Mappings
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>so', ':so%<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>x', ':x<CR>', opts)
map('n', '<leader>t', ':terminal<CR>', opts)
map('i', '<C-d>', '<Escape>', opts)

-- NvimTree
map('n', '<C-b>', ':NvimTreeToggle<CR>', opts)
-- Dashboard
map('n', '<leader>ff', ':DashboardFindFile<CR>', opts)
map('n', '<leader>fw', ':DashboardFindWord<CR>', opts)
map('n', '<F3>', ':Dashboard', opts)

-- Barbar
--A- alt, C - control, S - shift
--Move to previous/next
map('n', '<S-Tab>', ':BufferPrevious<CR>', opts)
map('n', '<Tab>', ':BufferNext<CR>', opts)
--Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
--Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
map('n', '<C-w>', ':BufferClose<CR>', opts)
map('n', '<C-p>', ':BufferPick<CR>', opts)
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Prettier
map('n', '<Space>p', ':Prettier<CR>', opts)

