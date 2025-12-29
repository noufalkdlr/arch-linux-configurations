return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        options = {

          transparency = false,

          cursorline = true,
          lualine_transparency = false,
        },
        colors = {
          onedark_dark = {

            bg = "#0f111a",
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_dark",
    },
  },
}
