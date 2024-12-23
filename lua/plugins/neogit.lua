return {
  {
    'NeogitOrg/neogit',
    cmd = 'Neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',

      'ibhagwan/fzf-lua',
    },
    config = true,
    keys = {
      {
        '<leader>gg',
        function()
          require('neogit').open { kind = 'split' }
        end,
        desc = 'Neogit',
      },
    },
  },
}
