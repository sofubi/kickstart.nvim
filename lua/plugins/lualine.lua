return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
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
