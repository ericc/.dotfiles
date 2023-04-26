local status, mason = pcall(require, 'mason')
if (not status) then return end

local lsp_status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not lsp_status) then return end

mason.setup {}

mason_lspconfig.setup {
  ensure_installed = {
    'eslint',
    'gopls',
    'lua_ls',
    'pyright',
    'rust_analyzer',
    'tsserver',
  }
}
