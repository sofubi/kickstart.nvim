return {
  {
    'refractalize/oil-git-status.nvim',

    dependencies = {
      'stevearc/oil.nvim',
    },

    config = true,
  },
  {
    'stevearc/oil.nvim',
    event = 'VeryLazy',
    config = function()
      -- Declare a global function to retrieve the current directory
      function _G.get_oil_winbar()
        local dir = require('oil').get_current_dir()
        if dir then
          return vim.fn.fnamemodify(dir, ':~')
        else
          -- If there is no current directory (e.g. over ssh), just show the buffer name
          return vim.api.nvim_buf_get_name(0)
        end
      end

      require('oil').setup {
        win_options = {
          winbar = '%!v:lua.get_oil_winbar()',
          signcolumn = 'yes:2',
        },
        keymaps = {
          ['gy'] = 'actions.yank_entry',
        },
        view_options = {
          show_hidden = true,
        },
      }
    end,
    opts = {},
    keys = {
      {
        '-',
        '<cmd>Oil<cr>',
        desc = 'Oil - Open parent',
      },
    },
  },
}
