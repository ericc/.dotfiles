local status, ts_context_commentstring = pcall(require, 'ts_context_commentstring')
if (not status) then return end

ts_context_commentstring.setup {
  enable_autocmd = false,
}

vim.g.skip_ts_context_commentstring_module = true
