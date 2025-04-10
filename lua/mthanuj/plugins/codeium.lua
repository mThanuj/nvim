return {
  'Exafunction/codeium.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  event = 'InsertEnter',
  config = function()
    require('codeium').setup {
      workspace_root = {
        use_lsp = true,
      },
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        manual = false,
        filetypes = {},
        default_filetype_enabled = true,
        idle_delay = 0,
        virtual_text_priority = 65535,
        map_keys = true,
        accept_fallback = nil,
        key_bindings = {
          accept = '<Tab>',
          accept_word = false,
          accept_line = false,
          clear = false,
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
    }
  end,
}
