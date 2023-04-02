local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local lsp_flags = {
  debounce_text_changes = 150,
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' }
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  flags = lsp_flags,
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  flags = lsp_flags,
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language serve to recognize the 'vim' global
        globals = { 'vim' },
      },

      workspace = {
        -- Make the server aware of Neovime runtime files
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false,
      }
    }
  }
}
