local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format_notify = true,
      inlay_hints = { enabled = false },
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        html = {
          filetypes = { "html", "templ", "htmldjango" },
        },
        jedi_language_server = {},
        gitlab_ci_ls = {},
      },
    },
  },
}
