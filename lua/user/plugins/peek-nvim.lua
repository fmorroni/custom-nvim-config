return {
  {
    "fmorroni/peek.nvim",
    branch = "my-main",
    event = { "VeryLazy" },
    -- build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        -- app = { 'brave', '--new-window' },
      })
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
    keys = {
      { "<leader>v", "<CMD>PasteImg<CR>", ft = "markdown", desc = 'Paste image from clipboard' },
      { "<leader>x", "<CMD>PeekOpen<CR>", ft = "markdown", desc = 'PeekOpen' },
    }
  }
}
