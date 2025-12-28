return {
  -- 1. Tokyonight Theme Configuration (Editor, Icons, Sidebar colors) 🎨
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        local color = "#1a4b5c" -- Your Dark Cyan color

        -- Window Separator
        hl.WinSeparator = { fg = color }

        -- Selection Colors (Editor & Explorer)
        hl.CursorLine = { bg = color }
        hl.SnacksPickerCursorLine = { bg = color }
        hl.SnacksPickerListCursorLine = { bg = color }
        hl.NeoTreeCursorLine = { bg = color }

        -- Tree & Indent Lines
        hl.SnacksPickerTree = { fg = color }
        hl.SnacksIndent = { fg = color }
        hl.SnacksIndentScope = { fg = color }
        hl.IblIndent = { fg = color }
        hl.IblScope = { fg = color }

        -- Line Numbers
        hl.LineNr = { fg = color }
        hl.LineNrAbove = { fg = color }
        hl.LineNrBelow = { fg = color }
        -- hl.CursorLineNr = { fg = color, bold = true } -- Active line number
      end,
    },
  },

  -- 2. Lualine Configuration (Status Bar Fix) 📊
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local color = "#1a4b5c" -- Main color
      local dark_color = "#10303b" -- Darker shade
      local text = "#ffffff" -- Text color

      -- Load the default tokyonight theme to customize it
      local custom_theme = require("lualine.themes.tokyonight")

      -- Customize Normal Mode
      custom_theme.normal.a = { bg = color, fg = text, gui = "bold" }
      custom_theme.normal.b = { bg = dark_color, fg = color }
      custom_theme.normal.c = { bg = dark_color, fg = "#a9b1d6" }

      -- Customize Inactive Mode
      custom_theme.inactive.a = { bg = dark_color, fg = "#a9b1d6" }
      custom_theme.inactive.b = { bg = "NONE", fg = dark_color }
      custom_theme.inactive.c = { bg = "NONE", fg = dark_color }

      -- Apply the custom theme to lualine
      opts.options.theme = custom_theme
    end,
  },
}
