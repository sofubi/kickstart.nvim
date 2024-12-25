return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      require('leap').create_default_mappings()
      require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      require('leap.user').set_repeat_keys('<enter>', '<backspace>')
      vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' }) -- or some grey
      vim.api.nvim_set_hl(0, 'LeapMatch', {
        -- For light themes, set to 'black' or similar.
        fg = 'white',
        bold = true,
        nocombine = true,
      })
    end,
  },
  {
    'ggandor/flit.nvim',
    lazy = false,
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        -- A string like "nv", "nvo", "o", etc.
        labeled_modes = 'nvo',
        -- Repeat with the trigger key itself.
        clever_repeat = true,
        multiline = true,
        -- Like `leap`s similar argument (call-specific overrides).
        -- E.g.: opts = { equivalence_classes = {} }
        opts = { equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' } },
      }
    end,
  },
}
