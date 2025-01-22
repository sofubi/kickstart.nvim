return {
  {
    'hkupty/iron.nvim',
    config = function()
      local python_format = require('iron.fts.common').bracketed_paste_python
      require('iron.core').setup {
        config = {
          repl_definition = {
            python = {
              command = { 'ipython', '--no-autoindent' },
              format = python_format,
            },
          },
          repl_open_cmd = require('iron.view').split.vertical.botright(0.45),
        },
        keymaps = {
          send_motion = '<space>sc',
          visual_send = '<space>sc',
          send_file = '<space>sf',
          send_line = '<space>sl',
          send_paragraph = '<space>sp',
          send_until_cursor = '<space>su',
          send_mark = '<space>sm',
          mark_motion = '<space>mc',
          mark_visual = '<space>mc',
          remove_mark = '<space>md',
          cr = '<space>s<cr>',
          interrupt = '<space>s<space>',
          exit = '<space>sq',
          clear = '<space>rl',
        },
      }
    end,
    keys = {
      {
        '<leader>rs',
        '<cmd>IronRepl<cr>',
        desc = 'Start Repl',
      },
      {
        '<leader>rr',
        '<cmd>IronRestart<cr>',
        desc = 'Restart Repl',
      },
      {
        '<leader>rf',
        '<cmd>IronFocus<cr>',
        desc = 'Focus Repl',
      },
      {
        '<leader>rh',
        '<cmd>IronHide<cr>',
        desc = 'Hide Repl',
      },
    },
  },
}
