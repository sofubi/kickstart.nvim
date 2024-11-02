return {
  {
    'nvim-neorg/neorg',
    ft = 'norg',
    cmd = 'Norg',
    version = '*',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-neorg/neorg-telescope' },
      { 'vhyrro/luarocks.nvim' },
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
          ['core.integrations.telescope'] = {},
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
    keys = {
      {
        '<leader>N',
        '<Plug>(neorg.telescope.find_norg_files)',
        desc = 'Open Neorg index',
      },
    },
  },
}
