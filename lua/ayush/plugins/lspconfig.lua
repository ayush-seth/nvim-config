local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
    return
end

local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    local ts = require('telescope.builtin')

    vim.keymap.set('n', 'gd', ts.lsp_definitions, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', ts.lsp_implementations, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    --    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    --   vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    --  vim.keymap.set('n', '<leader>wl', function()
    --    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    vim.keymap.set('n', 'gT', ts.lsp_type_definitions, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action({ apply = true }) end, opts)
    vim.keymap.set('n', 'gr', ts.lsp_references, opts)
    vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
end

-- Typesript
lspconfig.tsserver.setup({
    on_attach = on_attach
})

-- Tailwind
lspconfig.tailwindcss.setup({
    on_attach = on_attach
})

-- Lua
lspconfig.sumneko_lua.setup({
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
            telemetry = {
                -- Do not send telemetry data containing a randomized but unique identifier
                enable = false,
            },
        },
    },
})
