return {
  {
    'saghen/blink.cmp',
    -- dependencies = { 'rafamadriz/friendly-snippets' },

    -- use a release tag to download pre-built binaries
    version = '*',

    opts = {
      keymap = {
        preset = 'none',
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide' },
        ['<CR>'] = { 'select_and_accept' },
        ['<C-c>'] = { 'cancel', 'fallback' },
        ['<ESC>'] = { 'cancel', 'fallback' },

        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },

        ['<A-k>'] = { 'scroll_documentation_up', 'fallback' },
        ['<A-j>'] = { 'scroll_documentation_down', 'fallback' },

        -- ['<Tab>'] = { 'snippet_forward', 'fallback' },
        -- ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

        ['<C-s>'] = { 'show_signature', 'hide_signature', 'fallback' },
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      sources = {
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },

      fuzzy = { implementation = "rust" },
      -- signature = {
      --   enabled = true,
      --   window = { show_documentation = false },
      -- },
    },
  }
}
