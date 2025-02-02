return {
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    config = true,
    opts = {
      buffers = {
        colors = {
          backgroundColor = 'github-nvim-theme-dark',
          blend = -0.2,
        },
        scratchPad = {
          fileName = 'scratch_notes',
          enabled = true,
          location = nil,
        },
        bo = {
          filetype = 'md',
        },
        wo = {
          fillchars = 'eob: ',
        },
      },
    },
  },
}
