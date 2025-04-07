return {
  {
    'saghen/blink.pairs',
    version = '*',
    event = 'InsertEnter',
    build = 'cargo build --release',

    opts = {
      mappings = {
        enabled = true,
        pairs = {},
      },
      highlights = {
        enabled = true,
        groups = {
          'BlinkPairsOrange',
          'BlinkPairsPurple',
          'BlinkPairsBlue',
        },
      },
      debug = false,
    },
  },
  {
    'L3MON4D3/LuaSnip',
    lazy = true,
    dependencies = {
      {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
          require('luasnip.loaders.from_vscode').lazy_load { paths = { vim.fn.stdpath 'config' .. '/snippets' } }
        end,
      },
    },
    opts = {
      history = true,
      delete_check_events = 'TextChanged',
    },
  },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    event = 'InsertEnter',
    version = '1.*',
    build = 'cargo build --release',
    opts = {
      keymap = {
        preset = 'enter',
        ['C-e'] = {},
        ['<TAB>'] = {},
        ['<S-TAB>'] = {},
      },

      snippets = {
        preset = 'luasnip',
      },

      appearance = {
        nerd_font_variant = 'mono',
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        list = {
          selection = {
            preselect = false,
          },
        },
      },

      sources = {
        default = { 'lsp', 'snippets', 'path', 'buffer' },
      },
    },
    opts_extend = { 'sources.default' },
  },
}
