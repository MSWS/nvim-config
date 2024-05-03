vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', '<C-Space>', vim.lsp.buf.hover, {})
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set({'n', 'v'}, '<F2>', vim.lsp.buf.rename, {})
  end,
})
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
    end
  }
}
