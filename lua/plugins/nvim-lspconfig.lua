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
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                diagnosticSeverityOverrides = {
                  reportOptionalMemberAccess = "none",
                  reportUnusedVariable = "none",
                  reportUnusedCallResult = "none",
                  reportUnusedExpression = "none",
                  reportUnknownMemberType = "none",
                  reportUnknownLambdaType = "none",
                  reportUnknownParameterType = "none",
                  reportUnknownVariableTypeType = "none",
                  reportMissingParameterType = "none",
                  reportMissingTypeStub = "information",
                  reportUnknownVariableType = "none",
                  reportUnknownArgumentType = "none",
                  reportImplicitOverride = "none",
                  reportAny = "none",
                },
              },
            },
          },
        },
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        html = {
          filetypes = { "html", "templ", "htmldjango" },
        },
        gitlab_ci_ls = {},
        ---@type lspconfig.options.pyright
        pyright = {
          capabilities = (function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
            return capabilities
          end)(),
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                -- diagnosticMode = "workspace",
                diagnosticSeverityOverrides = {
                  reportGeneralTypeIssues = "information",
                  reportPrivateImportUsage = "information",
                  reportOptionalOperand = "information",
                  reportOptionalSubscript = "information",
                  reportOptionalMemberAccess = "information",
                },
              },
            },
          },
        },
      },
    },
  },
}
