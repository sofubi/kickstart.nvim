return {
  {
    'zenbones-theme/zenbones.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    dependencies = {
      'rktjmp/lush.nvim',
    },
    init = function()
      vim.g.background = 'dark'
      vim.cmd.colorscheme 'zenbones'
    end,
  },
}
