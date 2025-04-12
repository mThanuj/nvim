return {
  'folke/snacks.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    animate = {
      enabled = true,
    },
    bigfile = {
      enabled = true,
      size = 10 * 1024 * 1024,
    },
    image = {
      enabled = true,
    },
    indent = {
      enabled = true,
    },
    lazygit = {
      enabled = true,
    },
  },
  keys = {
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = '[L]azy[G]it',
    },
  },
}
