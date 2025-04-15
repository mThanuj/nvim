return {
  {
    'hrsh7th/cmp-nvim-lsp',
  },
  {
    'L3MON4D3/LuaSnip',
    lazy = true,
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
    config = function(_, opts)
      require('luasnip').setup(opts)

      require('luasnip.loaders.from_vscode').lazy_load()

      require('luasnip.loaders.from_vscode').lazy_load { paths = { vim.fn.stdpath 'config' .. '/snippets' } }

      vim.keymap.set({ 'i', 's' }, '<M-l>', function()
        if require('luasnip').expand_or_jumpable() then
          return '<Plug>luasnip-expand-or-jump'
        else
          return '<M-l>'
        end
      end, { expr = true, silent = true })

      vim.keymap.set({ 'i', 's' }, '<M-h>', function()
        if require('luasnip').jumpable(-1) then
          return '<Plug>luasnip-jump-prev'
        else
          return '<M-h>'
        end
      end, { expr = true, silent = true })
    end,

    opts = {

      history = true,

      region_check_events = 'CursorHold,InsertLeave',

      delete_check_events = 'TextChanged,InsertEnter',
    },
  },
  {
    'hrsh7th/nvim-cmp',
    version = false,
    dependencies = {
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require 'cmp'
      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup {
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm { select = true },
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        }, {
          { name = 'buffer' },
        }),
      }
    end,
  },
}
