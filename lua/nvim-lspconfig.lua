local chain_complete_list = {
    default = {
        { complete_items = { 'lsp', 'snippet' } },
        { complete_items = { 'buffers' } },
        { complete_items = { 'path' },          triggered_only = { '/' } },
    },
    string = {
        { complete_items = { 'path' },   triggered_only = { '/' } },
        { complete_items = { 'buffers' } },
    },
    comment = {},
}

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_set_keymap('i', '<c-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts) -- apparently is needed to have persistent signature_help
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl',
        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    -- Set autocommands conditional on server_capabilities
    -- Light highlight color: #b2dbe7
    -- Dark highlight color: #393649
    if client.server_capabilities.document_highlight then
        vim.api.nvim_exec([[
            hi LspReferenceRead  gui=none	guibg=#393649
            hi LspReferenceText  gui=none	guibg=#393649
            hi LspReferenceWrite gui=none	guibg=#393649
            augroup lsp_document_highlight
                autocmd!
                autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
        ]], false)
    end
end

-- Use a loop to conveniently setup multiple servers and map buffer local keybindings when the language server attaches
local servers = { "pyright", "bashls", "vimls", "clangd", "texlab" } -- "fortls"
-- require("mason-lspconfig").setup {
--     ensure_installed = servers
-- }
for _, lsp in pairs(servers) do
    vim.lsp.config(lsp, {
        on_attach = on_attach,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    })
    vim.lsp.enable(lsp)
end


-- display a float window with diagnostic info using saga
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        underline = true,
        signs = true,
    }
)
-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
