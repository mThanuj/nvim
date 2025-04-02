local keymap = vim.keymap

keymap.set('n', 's', '<Nop>', { noremap = true, silent = true })
keymap.set('n', 'S', '<Nop>', { noremap = true, silent = true })

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', '<C-f>', '<C-f>zz')
keymap.set('n', '<C-b>', '<C-b>zz')

keymap.set('n', 'Y', 'yy')
keymap.set('x', 'p', '"_dP', { noremap = true, silent = true })
keymap.set('x', 'P', '"_dp', { noremap = true, silent = true })

keymap.set('n', 'B', '^', { desc = 'Move to start of line' })
keymap.set('n', 'E', '$', { desc = 'Move to end of line' })

keymap.set('n', '<left>', '<cmd>echo "Dont be a pussy. Use h to move!!"<CR>')
keymap.set('n', '<right>', '<cmd>echo "Dont be a pussy. Use l to move!!"<CR>')
keymap.set('n', '<up>', '<cmd>echo "Dont be a pussy. Use k to move!!"<CR>')
keymap.set('n', '<down>', '<cmd>echo "Dont be a pussy. Use j to move!!"<CR>')

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '-', '<CMD>Oil --float<CR>', {})

keymap.set('n', 'K', vim.lsp.buf.hover)
keymap.set('n', 'gd', vim.lsp.buf.definition)
keymap.set('n', 'gD', vim.lsp.buf.declaration)
keymap.set('n', 'gr', vim.lsp.buf.references)

local telescopeBuiltin = require 'telescope.builtin'
keymap.set(
  'n',
  '<leader>ff',
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
  { desc = '[F]ind [F]iles' }
)
keymap.set('n', '<leader>fg', telescopeBuiltin.live_grep, { desc = '[F]ind Live [G]rep' })
keymap.set('n', '<leader>fd', telescopeBuiltin.diagnostics, { desc = '[F]ind [D]iagnostics' })
keymap.set('n', '<leader>fs', telescopeBuiltin.lsp_document_symbols, { desc = '[F]ind Document [S]ymbols' })
keymap.set('n', '<leader>fz', ':Telescope zoxide list<CR>', { desc = '[F]ind [Z]oxide' })
keymap.set('n', '<leader>fc', ':Telescope colorscheme<CR>', { desc = '[F]ind [C]olorscheme' })
keymap.set('n', '<leader>fh', telescopeBuiltin.help_tags, { desc = '[F]ind [H]elp Tags' })

local harpoon = require 'harpoon'

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end)
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set('n', '<M-h>', function()
  harpoon:list():select(1)
end)
vim.keymap.set('n', '<M-j>', function()
  harpoon:list():select(2)
end)
vim.keymap.set('n', '<M-k>', function()
  harpoon:list():select(3)
end)
vim.keymap.set('n', '<M-l>', function()
  harpoon:list():select(4)
end)

vim.keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end)
vim.keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end)
