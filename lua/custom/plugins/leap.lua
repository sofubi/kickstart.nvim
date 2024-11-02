return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    dependencies = {
      {
        'tpope/vim-repeat',
      },
    },
    config = function()
      require('leap').create_default_mappings()
      require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      require('leap.user').set_repeat_keys(';', ',')
      vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' }) -- or some grey
      vim.api.nvim_set_hl(0, 'LeapMatch', {
        -- For light themes, set to 'black' or similar.
        fg = 'white',
        bold = true,
        nocombine = true,
      })
    end,
  },
}
