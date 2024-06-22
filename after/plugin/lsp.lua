local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clangd',
    'sumneko_lua',
    'rust_analyzer'
})

lsp.on_attach(function(client, buffnr)
    local opts = {buffer = buffnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
