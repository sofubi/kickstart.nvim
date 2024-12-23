return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon add',
      },
      {
        '<C-e>',
        function()
          require('harpoon.ui'):toggle_quick_menu(require('harpoon'):list())
        end,
        desc = 'Harpoon quick menu',
      },

      {
        '<C-t>',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'Harpoon list 2',
      },
      {
        '<C-n>',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'Harpoon list 3',
      },
      {
        '<C-s>',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'Harpoon list 4',
      },

      {
        '<C-S-P>',
        function()
          require('harpoon'):list():prev()
        end,
        desc = 'Harpoon list prev',
      },
      {
        '<C-S-N>',
        function()
          require('harpoon'):list():next()
        end,
        desc = 'Harpoon list next',
      },
    },
    config = function()
      local harpoon = require 'harpoon'
      -- REQUIRED
      harpoon:setup()
      -- REQUIRED
    end,
  },
}
