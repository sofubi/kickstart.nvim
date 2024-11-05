return {
  {
    'tiagovla/scope.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('scope').setup {}
      require('telescope').load_extension 'scope'
    end,
    keys = {
      {
        '<leader>?',
        function()
          require('telescope').extensions.scope.buffers()
        end,
        desc = '[?] Find existing buffers',
      },
      {
        '<t',
        '<cmd>tabprevious<cr>',
        desc = 'Previous tab',
      },
      {
        '>t',
        '<cmd>tabnext<cr>',
        desc = 'Next tab',
      },
      {
        'H',
        '<cmd>bprevious<cr>',
        desc = 'Previous buffer',
      },
      {
        'L',
        '<cmd>bnext<cr>',
        desc = 'Next buffer',
      },
      {
        '<leader>bd',
        '<cmd>bd<cr>',
        desc = '[d]elete current buffer',
      },
      {
        '<leader>bD',
        '<cmd>%bd|e#<cr>',
        desc = '[D]elete all other buffers',
      },
      {
        '<leader>bt',
        desc = '[t]abs',
      },
      {
        '<leader>btn',
        '<cmd>tabnew<cr>',
        desc = '[n]ew tab',
      },
      {
        '<leader>btd',
        '<cmd>tabclose<cr>',
        desc = '[d]elete tab',
      },
    },
  },
}
