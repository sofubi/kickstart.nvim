return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      quickfile = { enabled = true },
      scratch = { enabled = true },
      statuscolumn = { enabled = true },
    },
    keys = {
      {
        '<leader>n',
        function()
          require('snacks').scratch()
        end,
        desc = 'Toggle Scratch Buffer',
      },
      {
        '<leader>N',
        function()
          Snacks.scratch.select()
        end,
        desc = 'Select Scratch Buffer',
      },
    },
  },
}
