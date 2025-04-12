return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release -DCMAKE_POLICY_VERSION_MINIMUM=3.5 && cmake --build build --config Release && cmake --install build --prefix build',
      },
      'jvgrootveld/telescope-zoxide',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      local telescope = require 'telescope'
      telescope.setup {
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          },
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {},
          },
        },
        pickers = {
          colorscheme = { enable_preview = true },
          find_files = {
            hidden = true,
            find_command = {
              'rg',
              '--files',
              '--glob',
              '!{.git/*,.next/*,.svelte-kit/*,target/*,node_modules/*}',
              '--path-separator',
              '/',
            },
          },
        },
      }

      for _, ext in ipairs { 'fzf', 'zoxide', 'ui-select' } do
        pcall(telescope.load_extension, ext)
      end
    end,
  },
}
