return {
  {
    's1n7ax/nvim-terminal',
    event = 'VeryLazy',
    config = function()
      vim.o.hidden = true
      require('nvim-terminal').setup {
        window = {
          position = 'vert',
          split = 'vs',
          width = 80,
          height = 100,
        },
        disable_default_keymaps = true,
      }
    end,
    keys = {
      {
        '<C-\\>',
        function()
          NTGlobal['terminal']:toggle()
        end,
        desc = 'Toggle terminal',
        silent = true,
      },
      {
        '<C-=>',
        function()
          NTGlobal['window']:change_width(10)
        end,
        desc = 'Toggle terminal',
        silent = true,
      },
      {
        '<C-->',
        function()
          NTGlobal['window']:change_width(-10)
        end,
        desc = 'Toggle terminal',
        silent = true,
      },
    },
  },
}
