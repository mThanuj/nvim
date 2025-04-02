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
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    event = 'InsertEnter',
    version = '1.*',
    build = 'cargo build --release',
    opts = {
      keymap = {
        preset = 'enter',
        ['C-e'] = {},
      },

      appearance = {
        nerd_font_variant = 'mono',
      },

      completion = { documentation = { auto_show = false } },

      sources = {
        default = { 'lsp', 'snippets', 'path', 'buffer' },
      },

      fuzzy = { implementation = 'prefer_rust_with_warning' },
    },
    opts_extend = { 'sources.default' },
  },
}
