return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    opts = {},
    keys = {
      { "<leader>m", "<CMD>Mason<CR>", desc = "Open mason" }
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", 'saghen/blink.cmp' },
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        -- Default handler
        function(server_name)
          local capabilities = require('blink.cmp').get_lsp_capabilities()
          require("lspconfig")[server_name].setup({ capabilities = capabilities })
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["rust_analyzer"] = function ()
        --     require("rust-tools").setup {}
        -- end
      }
      require('user.plugins.lsp.keymaps')
    end,
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {},
  },
}
