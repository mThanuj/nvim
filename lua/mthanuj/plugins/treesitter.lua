return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      modules = {},
      sync_install = false,
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          node_incremental = '<CR>',
        },
      },
    }
  end,
}
