return {
  {
    'nvim-neorg/neorg',
    ft = 'norg',
    cmd = 'Norg',
    version = '*',
    dependencies = {
      'vhyrro/luarocks.nvim',
    },
    lazy = false,
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {},
          ['core.integrations.nvim-cmp'] = {},
          ['core.export'] = {},
          ['core.completion'] = { config = { engine = 'nvim-cmp', name = '[Norg]' } },
          ['core.keybinds'] = {
            config = {
              default_keybinds = true,
              neorg_leader = '<leader>N',
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/Documents/Notes',
              },
              default_workspace = 'notes',
            },
          },
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
    keys = {
      {
        '<leader>N',
        '<cmd>Neorg index<cr>',
        desc = 'Open Neorg index',
      },
    },
  },
}
