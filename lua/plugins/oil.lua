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
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      win_options = {
        signcolumn = 'yes:2',
      },
      keymaps = {
        ['gy'] = {
          'actions.yank_entry',
          opts = {
            modify = ':p:.',
          },
        },
      },
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
    },
    keys = {
      {
        '-',
        '<cmd>Oil<cr>',
        desc = 'Oil - Open parent',
      },
    },
  },
}
