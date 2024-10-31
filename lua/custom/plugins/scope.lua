return {
  {
    'tiagovla/scope.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('telescope').load_extension 'scope'
    end,
    keys = {
      {
        '<leader><leader>',
        function()
          require('telescope').extensions.scope.buffers()
        end,
        desc = '[ ] Find existing buffers',
      },
      {
        '<A-[>',
        '<cmd>tabprevious<cr>',
        desc = 'Previous tab',
      },
      {
        '<A-]>',
        '<cmd>tabnext<cr>',
        desc = 'Next tab',
      },
      {
        '[b',
        '<cmd>bprevious<cr>',
        desc = 'Previous buffer',
      },
      {
        ']b',
        '<cmd>bnext<cr>',
        desc = 'Next buffer',
      },
      {
        '<leader>bd',
        '<cmd>bdelete<cr>',
        desc = 'Delete current buffer',
      },
      {
        '<leader>tn',
        '<cmd>tabnew<cr>',
        desc = 'New tab',
      },
    },
  },
}
