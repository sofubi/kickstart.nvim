return {
  {
    'linux-cultist/venv-selector.nvim',
    branch = 'regexp',
    cmd = 'VenvSelect',
    opts = {
      settings = {
        search = {
          opp_venvs = {
            command = 'fd python$ ~/Projects/venvs',
          },
        },
        options = {
          debug = true,
          notify_user_on_venv_activation = true,
        },
      },
    },
    ft = 'python',
    keys = {
      {
        '<leader>cv',
        '<cmd>:VenvSelect<cr>',
        desc = 'Select VirtualEnv',
        ft = 'python',
      },
    },
  },
}
