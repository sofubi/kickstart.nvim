return {
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = {
      'rktjmp/lush.nvim',
    },
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones = {
        darkness = 'stark',
        solid_line_nr = true,
        lighten_comments = 45,
        lighten_non_text = 35,
        lighten_cursor_line = 6,
        lighten_line_nr = 40,
        italic_comments = true,
      }
      vim.cmd.colorscheme 'zenbones'
    end,
  },
}
