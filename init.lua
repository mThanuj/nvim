require 'mthanuj.lazy'
require 'mthanuj.core'

local utils = require("mthanuj.utils")

utils.fix_telescope_parens_win()
utils.color_overrides.setup_colorscheme_overrides()

vim.cmd("colorscheme base16-black-metal-gorgoroth")
vim.cmd("VagueLine")
vim.cmd("VagueStatus")
