return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
        formatters_by_ft = {
            lua = { 'stylua', stop_after_first = true },
            python = { 'black' },
            rust = { 'rustfmt' },
            javascript = { 'prettier', stop_after_first = true },
            javascriptreact = { 'prettier', stop_after_first = true },
            typescript = { 'prettier', stop_after_first = true },
            typescriptreact = { 'prettier', stop_after_first = true },
            go = { 'gofumpt', 'golines', 'goimports-reviser' },
            c = { 'clang_format' },
            cpp = { 'clang_format' },
            yaml = { 'yamlfmt' },
            html = { 'prettier' },
            json = { 'prettier' },
            markdown = { 'prettier' },
            css = { 'prettier', stop_after_first = true },
        },
        formatters = {
            clang_format = {
                prepend_args = { "--style=file" },
            },
        },
        format_on_save = {
            timeout_ms = 250,
            lsp_format = 'fallback',
        },
    },
}
