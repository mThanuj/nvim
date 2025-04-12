local keymap = vim.keymap

keymap.set('n', 's', '<Nop>', { noremap = true, silent = true })
keymap.set('n', 'S', '<Nop>', { noremap = true, silent = true })

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', 'Y', 'yg$', { desc = 'Yank to end of line' })

keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines' })

keymap.set('x', '<leader>p', '"_dP', { noremap = true, silent = true })
keymap.set('x', '<leader>P', '"_dp', { noremap = true, silent = true })

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
keymap.set('n', '<leader>fw', telescopeBuiltin.live_grep, { desc = '[F]ind [W]ord' })
keymap.set('n', '<leader>fd', telescopeBuiltin.diagnostics, { desc = '[F]ind [D]iagnostics' })
keymap.set('n', '<leader>fs', telescopeBuiltin.lsp_document_symbols, { desc = '[F]ind Document [S]ymbols' })
keymap.set('n', '<leader>fz', ':Telescope zoxide list<CR>', { desc = '[F]ind [Z]oxide' })
keymap.set('n', '<leader>fc', ':Telescope colorscheme<CR>', { desc = '[F]ind [C]olorscheme' })
keymap.set('n', '<leader>fh', telescopeBuiltin.help_tags, { desc = '[F]ind [H]elp Tags' })
keymap.set('n', '<leader>fg', telescopeBuiltin.git_files, { desc = '[F]ind [G]it Files' })

local harpoon = require 'harpoon'

keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end)
keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

keymap.set('n', '<M-h>', function()
  harpoon:list():select(1)
end)
keymap.set('n', '<M-j>', function()
  harpoon:list():select(2)
end)
keymap.set('n', '<M-k>', function()
  harpoon:list():select(3)
end)
keymap.set('n', '<M-l>', function()
  harpoon:list():select(4)
end)

keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end)
keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end)

keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })

keymap.set('n', '<leader>gf', '<CMD>GrugFar<CR>', { desc = '[G]rug [F]ar' })

keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })
keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { noremap = true, silent = true })
