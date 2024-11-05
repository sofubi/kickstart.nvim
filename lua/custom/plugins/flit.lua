return {
  {
    'ggandor/flit.nvim',
    lazy = false,
    dependencies = {
      {
        'ggandor/leap.nvim',
      },
      {
        'tpope/vim-repeat',
      },
    },
    opts = {
      keys = { f = 'f', F = 'F', t = 't', T = 'T' },
      -- A string like "nv", "nvo", "o", etc.
      labeled_modes = 'nvo',
      -- Repeat with the trigger key itself.
      clever_repeat = true,
      multiline = false,
      -- Like `leap`s similar argument (call-specific overrides).
      -- E.g.: opts = { equivalence_classes = {} }
      opts = { equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' } },
    },
  },
}
