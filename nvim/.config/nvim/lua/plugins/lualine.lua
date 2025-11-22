---- https://github.com/nvim-lualine/lualine.nvim?tab=readme-ov-file#lualinenvim ----

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "gruvbox"
      }
    })
  end
}
