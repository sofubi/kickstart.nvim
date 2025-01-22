return {
  {
    'olimorris/codecompanion.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
      'github/copilot.vim',
      'nvim-telescope/telescope.nvim',
      'stevearc/dressing.nvim',
    },
    cmd = 'CodeCompanion',
    init = function()
      vim.cmd [[cab cc CodeCompanion]]
    end,
    opts = {
      display = {
        action_palette = {
          provider = 'default',
        },
      },
      strategies = {
        chat = {
          adapter = 'copilot',
        },
        inline = {
          adapter = 'copilot',
        },
        agent = {
          adapter = 'copilot',
        },
        opts = {
          log_level = 'DEBUG',
        },
      },
    },
    keys = {
      {
        '<C-a>',
        '<cmd>CodeCompanionActions<cr>',
        mode = { 'n', 'v' },
        desc = 'CodeCompanion Line Actions',
      },
      {
        '<LocalLeader>a',
        '<cmd>CodeCompanionChat Toggle<cr>',
        mode = { 'n', 'v' },
        desc = 'CodeCompanion Toggle Chat',
      },
      {
        'ga',
        '<cmd>CodeCompanionChat Add<cr>',
        mode = 'v',
        desc = 'CodeCompanion Add Range',
      },
    },
  },
}
