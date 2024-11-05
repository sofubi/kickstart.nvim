return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = false,
    branch = 'regexp',
    config = function()
      require('venv-selector').setup()
    end,
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
    keys = {
      { '<leader>cv', '<cmd>VenvSelect<cr>', ft = 'python' },
    },
  },
}
