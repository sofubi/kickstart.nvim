return {
  {
    'kevinhwang91/nvim-bqf', -- better quickfix
    event = 'QuickFixCmdPre',
    dependencies = {
      {
        'junegunn/fzf', -- bqf requires
      },
      {
        'stevearc/quicker.nvim', -- additional quickfix improvements
      },
    },
  },
}
