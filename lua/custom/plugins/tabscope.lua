return {
  {
    'backdround/tabscope.nvim',
    config = true,
    keys = {
      {
        '<leader>bd',
        function()
          require('tabscope').remove_tab_buffer()
        end,
        desc = '[D]elete buffer',
      },
    },
  },
}
