local map = function(mode, key_combination, command, opts)
  vim.keymap.set(mode, key_combination, command, opts)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remove highlights in searched words
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Save file
map('n', '<leader>w', '<cmd>w<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Terminal
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
map('n', '<leader>tv', '<cmd>vsplit<CR><cmd>terminal<CR>', { desc = 'Open [T]erminal in [V]ertical mode' })
map('n', '<leader>th', '<cmd>split<CR><cmd>terminal<CR>', { desc = 'Open [T]erminal in [H]orizontal mode' })

-- Splits
map('n', '<leader>vs', '<cmd>vsplit<CR>', { desc = 'Start vertical split' })
map('n', '<leader>hs', '<cmd>split<CR>', { desc = 'Start horizontal split' })

-- Navigation between splits
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Open file explorer
map('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open File Explorer' })

map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace current word in file' })

-- Move selected block in visual mode
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
