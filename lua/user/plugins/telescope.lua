return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      }
    },
    keys = function()
      local builtin = require('telescope.builtin') -- Now loaded only when needed
      return {
        { '<leader>ff', builtin.find_files,      desc = 'Telescope find files' },
        { '<leader>fg', builtin.live_grep,       desc = 'Telescope live grep' },
        { '<leader>fb', builtin.buffers,         desc = 'Telescope buffers' },
        { '<leader>fh', builtin.help_tags,       desc = 'Telescope help tags' },
        { '<leader>fw', builtin.grep_string,     desc = 'Telescope find word' },
        { '<leader>fr', builtin.registers,       desc = 'Telescope registers' },
        { '<leader>fc', builtin.command_history, desc = 'Telescope command history' },
      }
    end,
    opts = function()
      local actions = require('telescope.actions')
      local actions_layout = require('telescope.actions.layout')
      local actions_state = require('telescope.actions.state')
      local builtin = require('telescope.builtin') -- Now loaded only when needed

      local find_files_current_line = function(opts)
        opts = opts or {}
        opts.default_text = actions_state.get_current_line()
        builtin.find_files(opts)
      end

      local find_files_no_ignore = function()
        find_files_current_line({ no_ignore = true })
      end
      local find_files_with_hidden = function()
        find_files_current_line({ hidden = true })
      end
      local find_files_all = function()
        find_files_current_line({ no_ignore = true, hidden = true })
      end

      return {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-n>"] = actions.cycle_history_next,
              ["<A-j>"] = actions.preview_scrolling_down,
              ["<A-k>"] = actions.preview_scrolling_up,
              ["<A-p>"] = actions_layout.toggle_preview,
              ["<A-i>"] = find_files_no_ignore,
              ["<A-h>"] = find_files_with_hidden,
              ["<A-a>"] = find_files_all,
              ["<C-d>"] = actions.delete_buffer,
            },
            n = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-n>"] = actions.cycle_history_next,
              ["<A-j>"] = actions.preview_scrolling_down,
              ["<A-k>"] = actions.preview_scrolling_up,
              ["<A-p>"] = actions_layout.toggle_preview,
              ["<A-i>"] = find_files_no_ignore,
              ["<A-h>"] = find_files_with_hidden,
              ["<A-a>"] = find_files_all,
              ["dd"] = actions.delete_buffer,
            },
          },
        },
      }
    end,
  },
}
