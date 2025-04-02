return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup {
        PATH = 'prepend',
      }
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = {
          'bashls',
          'lua_ls',
          'rust_analyzer',
          'gopls',
          'html',
          'cssls',
          'emmet_language_server',
          'tailwindcss',
          'ts_ls',
          'astro',
          'pylsp',
          'clangd',
          'prismals',
          'yamlls',
          'jsonls',
          'eslint',
          'marksman',
          'sqlls',
        },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = 'BufReadPre',
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      local lspconfig = require 'lspconfig'
      local configs = require 'lspconfig.configs'

      lspconfig.sqlls.setup {
        capabilities = capabilities,
      }
      lspconfig.bashls.setup {
        capabilities = capabilities,
      }
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
        cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/lua-language-server' },
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file('', true),
            },
            telemetry = {
              enable = false,
            },
          },
        },
      }
      lspconfig.jsonls.setup {
        capabilities = capabilities,
      }
      lspconfig.gopls.setup {
        capabilities = capabilities,
      }
      lspconfig.cssls.setup {
        capabilities = capabilities,
      }
      lspconfig.prismals.setup {
        capabilities = capabilities,
      }
      lspconfig.yamlls.setup {
        capabilities = capabilities,
      }
      lspconfig.html.setup {
        capabilities = capabilities,
        filetypes = {
          'html',
          'php',
          'css',
          'javascriptreact',
          'typescriptreact',
          'javascript',
          'typescript',
          'jsx',
          'tsx',
        },
      }
      lspconfig.emmet_language_server.setup {
        capabilities = capabilities,
        filetypes = {
          'html',
          'css',
          'php',
          'javascriptreact',
          'typescriptreact',
          'javascript',
          'typescript',
          'jsx',
          'tsx',
          'markdown',
        },
      }
      lspconfig.tailwindcss.setup {
        capabilities = capabilities,
        filetypes = {
          'html',
          'css',
          'javascriptreact',
          'typescriptreact',
          'javascript',
          'typescript',
          'jsx',
          'tsx',
        },
        root_dir = require('lspconfig').util.root_pattern(
          'tailwind.config.js',
          'tailwind.config.cjs',
          'tailwind.config.mjs',
          'tailwind.config.ts',
          'postcss.config.js',
          'postcss.config.cjs',
          'postcss.config.mjs',
          'postcss.config.ts',
          'package.json',
          'node_modules',
          '.git'
        ),
      }

      if not configs.ts_ls then
        configs.ts_ls = {
          default_config = {
            cmd = { 'typescript-language-server', '--stdio' },
            capabilties = capabilities,
            filetypes = {
              'javascript',
              'javascriptreact',
              'typescript',
              'typescriptreact',
              'html',
            },
            root_dir = require('lspconfig').util.root_pattern('package.json', 'tsconfig.json', '.git'),
            single_file_support = true,
          },
        }
      end
      lspconfig.ts_ls.setup {
        capabilties = capabilities,
      }
      lspconfig.eslint.setup {
        capabilties = capabilities,
      }

      require('lspconfig').clangd.setup {
        cmd = {
          'clangd',
          '--background-index',
          '--pch-storage=memory',
          '--all-scopes-completion',
          '--pretty',
          '--header-insertion=never',
          '-j=4',
          '--inlay-hints',
          '--header-insertion-decorators',
          '--function-arg-placeholders',
          '--completion-style=detailed',
        },
        filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
        root_dir = require('lspconfig').util.root_pattern 'src',
        init_option = { fallbackFlags = { '-std=c++2a' } },
        capabilities = capabilities,
        single_file_support = true,
      }

      function get_python_path()
        local venv_path = os.getenv 'VIRTUAL_ENV'
        if venv_path then
          return venv_path .. '/bin/python3'
        else
          local os_name = require('mthanuj.utils').get_os()
          if os_name == 'windows' then
            return 'C:/python312'
          elseif os_name == 'linux' then
            return '/usr/bin/python3'
          else
            return '/usr/bin/python3'
          end
        end
      end

      lspconfig.pylsp.setup {
        capabilties = capabilities,
        settings = {
          python = {
            pythonPath = get_python_path(),
          },
        },
      }

      lspconfig.marksman.setup {
        capabilties = capabilities,
      }
    end,
  },
}
