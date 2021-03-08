local nvim_lsp = require('lspconfig')

local chain_complete_list = {
  default = {
    {complete_items = {'lsp', 'snippet'}},
    {complete_items = {'buffers'}},
    {complete_items = {'path'}, triggered_only = {'/'}},
  },
  string = {
    {complete_items = {'path'}, triggered_only = {'/'}},
    {complete_items = {'buffers'}},
  },
  comment = {},
}

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', '<leader>gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', '<leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead  gui=underline	guibg=none
      hi LspReferenceText  gui=underline	guibg=none
      hi LspReferenceWrite gui=underline	guibg=none
      augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "pyright", "bashls", "vimls", "clangd", "sourcekit", "fortls", "texlab", "r_language_server", "rnix", "cssls"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

-- jedi_language_server
-- nvim_lsp.jedi_language_server.setup{
--     init_options = {
--         jediSettings = {
--             autoImportModules = { "fastai", "fastcore" }
--         }
--     },
--     on_attach = on_attach
-- }
-- nvim_lsp.pyls.setup{
--     init_options = {
--         jediSettings = {
--             autoImportModules = { "fastai", "fastcore" }
--         }
--     },
--     on_attach = on_attach
-- }
-- nvim_lsp.pyls.setup{
--     on_attach = on_attach,
--     init_options = {
--         pyls = {
--             plugins = {
--                 preload = {
--                     modules = { "fastai", "fastcore" }
--                 }
--             }
--         }
--     }
-- }

-- display a float window with diagnostic info using saga
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     virtual_text = false,
--     underline = true,
--     signs = true,
--   }
-- )
-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
