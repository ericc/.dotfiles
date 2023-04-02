local status, cmp = pcall(require, 'cmp')
if (not status) then return end

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete({
      reason = cmp.ContextReason.Auto,
    }),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
    }),
    ['<Tab>'] = cmp.mapping.confirm({
      select = true,
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }),
}

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
