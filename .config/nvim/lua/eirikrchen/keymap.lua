local keymap = vim.keymap

-- Base remaps
keymap.set('n', '<leader>x', vim.cmd.Ex)
keymap.set('n', 'Q', '<nop>')

-- Clear search highlights
keymap.set('n', '<CR>', ':noh<CR><CR>', { silent = true })

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Move lines
keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Center on vertical motion
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Paste over and keep value in clipboard
keymap.set('x', '<leader>p', '"_dP')

-- Yank to system keyboard
keymap.set('n', '<leader>y', '"+y')
keymap.set('v', '<leader>y', '"+y')
keymap.set('n', '<leader>Y', '"+Y')

-- Replace all instances of a word
keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
