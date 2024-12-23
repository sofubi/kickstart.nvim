return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('toggleterm').setup {
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
    end,
  },
}
