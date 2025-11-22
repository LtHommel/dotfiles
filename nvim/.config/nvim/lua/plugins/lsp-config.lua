return {
  {
    ---- https://github.com/mason-org/mason-lspconfig.nvim?tab=readme-ov-file#mason-lspconfignvim ----
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    ---- https://github.com/mason-org/mason-lspconfig.nvim?tab=readme-ov-file#mason-lspconfignvim ----
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pylsp" }
      })
    end
  },
  {
    ---- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#nvim-lspconfig ----
    "neovim/nvim-lspconfig",
    config = function ()
      vim.lsp.config("lua_ls", {})
      vim.lsp.config("ts_ls", {})
      vim.lsp.config("pylsp", {})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}


