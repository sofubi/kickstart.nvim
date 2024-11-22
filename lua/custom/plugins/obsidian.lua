return {
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      -- refer to `:h file-pattern` for more examples
      'BufReadPre ' .. vim.fn.expand '~/Notes/obsidian_notes/Notes',
      'BufNewFile ' .. vim.fn.expand '~/Notes/obsidian_notes/Notes',
    },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
      'nvim-telescope/telescope.nvim',
    },
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '~/Notes/obsidian_notes/Notes',
        },
      },
      daily_notes = {
        folder = 'Daily',
      },
    },
  },
}
