return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    event = 'VeryLazy',
    config = function()
      local toggleterm = require 'toggleterm'
      local Terminal = require('toggleterm.terminal').Terminal
      local ipython = Terminal:new {
        cmd = 'ipython',
        hidden = true,
        direction = 'vertical',
        close_on_exit = true,
        auto_scroll = true,
      }

      toggleterm.setup {
        size = function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        autochdir = false,
        persist_mode = true,
        direction = 'float',
        close_on_exit = true,
        clear_env = false,
        shell = vim.o.shell,
        auto_scroll = true,
      }

      function _ipython_toggle()
        ipython:toggle()
      end
      vim.api.nvim_set_keymap('n', '<c-p>', '<cmd>lua _ipython_toggle()<cr>', { noremap = true, silent = true })
    end,
  },
}
