return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = false,
    branch = 'regexp',
    config = function()
      require('venv-selector').setup {
        settings = {
          search = {
            opp_venvs = {
              command = 'fd /bin/python$ ~/Projects/venvs --full-path',
            },
          },
          options = {
            debug = true,
            notify_user_on_venv_activation = true,
          },
        },
      }
    end,
    opts = {},
    keys = {
      { '<leader>cv', '<cmd>VenvSelect<cr>', ft = 'python' },
    },
  },
}
