return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      tabline = {
        lualine_a = { 'buffers' },
        lualine_b = { 'filename' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' },
      },
      extensions = {
        'quickfix',
        'lazy',
        'mason',
        'neo-tree',
        'oil',
      },
    },
  },
}
