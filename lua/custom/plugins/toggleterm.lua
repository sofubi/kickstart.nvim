return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_terminals = false,
        start_in_insert = true,
        insert_mappings = false,
        persist_size = true,
        direction = 'float',
        close_on_exist = true,
        shell = vim.o.shell,
        float_opts = {
          border = 'single',
          winblend = 3,
          title_pos = 'center',
        },
        autochdir = false,
        terminal_mappings = true,
        persist_mode = false,
        auto_scroll = true,
      }
    end,
  },
}
