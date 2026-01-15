return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "davidmh/cspell.nvim",
    },
    opts = function(_, opts)
      local cspell = require("cspell")
      opts.sources = opts.sources or {}
      local cspell_config = {
        config = {
          find_json = function(cwd)
            return vim.fn.expand(cwd .. "/cspell.json")
          end,
        },
      }

      table.insert(
        opts.sources,
        cspell.diagnostics.with({
          config = cspell_config,
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.HINT
          end,
        })
      )
      table.insert(
        opts.sources,
        cspell.code_actions.with({
          config = cspell_config,
        })
      )
    end,
  },
}
