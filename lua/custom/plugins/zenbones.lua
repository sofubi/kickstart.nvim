return {
  {
    'zenbones-theme/zenbones.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    dependencies = {
      'rktjmp/lush.nvim',
    },
    config = function()
      -- vim.g.zenbones_darken_comments = 80
      vim.g.zenbones_transparent_background = true
      vim.cmd.colorscheme 'zenbones'
      vim.g.background = 'dark'
    end,
  },
}
