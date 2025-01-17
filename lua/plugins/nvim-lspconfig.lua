local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      -- Useful for debugging formatter issues
      format_notify = true,
      inlay_hints = { enabled = false },
      servers = {
        ---@type lspconfig.options.basedpyright
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        html = {
          filetypes = { "html", "templ", "htmldjango" },
        },
        jedi_language_server = {},
        gitlab_ci_ls = {},
        ---@type lspconfig.options.pyright
      },
    },
  },
}
