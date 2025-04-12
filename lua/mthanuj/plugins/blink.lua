return {
  {
    'L3MON4D3/LuaSnip',
    lazy = true,
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function(_, opts)
      require('luasnip').setup(opts)
      require('luasnip.loaders.from_vscode').lazy_load()
      require('luasnip.loaders.from_vscode').lazy_load { paths = { vim.fn.stdpath 'config' .. '/snippets' } }

      vim.keymap.set({ 'i', 's' }, '<C-l>', function()
        if require('luasnip').expand_or_jumpable() then
          return '<Plug>luasnip-expand-or-jump'
        else
          return '<C-l>'
        end
      end, { expr = true, silent = true })

      vim.keymap.set({ 'i', 's' }, '<C-h>', function()
        if require('luasnip').jumpable(-1) then
          return '<Plug>luasnip-jump-prev'
        else
          return '<C-h>'
        end
      end, { expr = true, silent = true })
    end,
    opts = {
      history = true,
      region_check_events = "CursorHold,InsertLeave",
      delete_check_events = "TextChanged,InsertEnter",
    }
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
        ['<C-e>'] = {},
        ['<TAB>'] = {},
        ['<S-TAB>'] = {}
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
