local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Useful for debugging formatter issues
      format_notify = true,
      inlay_hints = { enabled = false },
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        html = {
          filetypes = { "html", "templ", "htmldjango" },
        },
        gitlab_ci_ls = {},
      },
    },
  },
}
