return {

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    opts = {
      colors = {
        bg = "#161719",
        split = "#2b303a",
      },
      highlights = {
        Normal = { bg = "#161719" },
        NormalFloat = { bg = "#18191c" },
        NormalNC = { bg = "#161719" },

        WinSeparator = { fg = "#2b303a", bg = "#161719" },
        NeoTreeWinSeparator = { fg = "#2b303a", bg = "#161719" },
        VertSplit = { fg = "#2b303a", bg = "#161719" },
        SnacksPickerBorder = { fg = "#2b303a", bg = "#161719" },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
