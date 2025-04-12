return {
  {
    'blazkowolf/gruber-darker.nvim',
    opts = {
      bold = false,
    },
  },
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
  },
  { 'ellisonleao/gruvbox.nvim' },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    'tjdevries/colorbuddy.nvim',
  },
  {
    'gmr458/cold.nvim',
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        transparent = false,
        style = {
          boolean = 'none',
          number = 'none',
          float = 'none',
          error = 'none',
          comments = 'none',
          conditionals = 'none',
          functions = 'none',
          headings = 'bold',
          operators = 'none',
          strings = 'none',
          variables = 'none',

          keywords = 'none',
          keyword_return = 'none',
          keywords_loop = 'none',
          keywords_label = 'none',
          keywords_exception = 'none',

          builtin_constants = 'none',
          builtin_functions = 'none',
          builtin_types = 'none',
          builtin_variables = 'none',
        },
        colors = {
          func = '#bc96b0',
          keyword = '#787bab',
          string = '#8a739a',
          number = '#8f729e',
          type = '#dcaed7',
        },
      }
    end,
  },
  {
    'jnurmine/Zenburn',
  },
  {
    'RRethy/base16-nvim',
  },
}
