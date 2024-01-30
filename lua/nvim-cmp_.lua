-- Set up nvim-cmp.
local cmp = require'cmp'

-- packer.startupより下
local go_prev = cmp.mapping(function() if cmp.visible() then cmp.select_prev_item() end end, { 'i', 'c' })

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  sources = {
    { name = "nvim_lsp" },
    -- { name = "buffer" },
    -- { name = "path" },
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = cmp.mapping(function() if cmp.visible() then cmp.select_prev_item() end end, { 'i', 'c' })
  },
  experimental = {
	ghost_text = true,
  },
  sources = {
    { name = 'nvim_lsp'}
  }
}
