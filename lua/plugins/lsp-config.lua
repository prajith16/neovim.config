return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
     "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup( {
          ensure_installed = {  "angularls",
            "lua_ls",
            "html",
            "cssls",
            "ts_ls",
        }
        })
     end
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
      config = function()
        require("mason-tool-installer").setup( {
          ensure_installed = {  "angularls",
            "prettier",
            "stylua",
            "eslint_d",
            "prettierd",
        }
      })
     end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})

      vim.keymap.set("n", "m", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action,opts)

    end
  }
}
