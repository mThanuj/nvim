local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
vim.bo.softtabstop = 2

vim.g.have_nerd_font = true

opt.number = true
opt.relativenumber = true

vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    opt.number = true
    opt.relativenumber = false
  end
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    opt.number = true
    opt.relativenumber = true
  end
})
opt.mouse = ''

opt.showmode = false

vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

opt.breakindent = true

opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'
opt.colorcolumn = "100"

opt.updatetime = 250

opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

opt.guicursor = "n-v-c:block-blinkon1-CursorInsert,i:block-CursorInsert"

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.inccommand = 'split'

opt.cursorline = true

opt.scrolloff = 10

opt.confirm = true
