return {
  {
    'gennaro-tedesco/nvim-possession',
    dependencies = {
      'ibhagwan/fzf-lua',
    },
    config = true,
    keys = {
      {
        '<leader>Sl',
        function()
          require('nvim-possession').list()
        end,
        desc = '[l]ist sessions',
      },
      {
        '<leader>Sn',
        function()
          require('nvim-possession').new()
        end,
        desc = '[n]ew session',
      },
      {
        '<leader>Su',
        function()
          require('nvim-possession').update()
        end,
        desc = '[u]pdate session',
      },
      {
        '<leader>Sd',
        function()
          require('nvim-possession').delete()
        end,
        desc = '[d]elete session',
      },
    },
  },
}
