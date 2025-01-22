return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = {
      { 'junegunn/fzf', build = './install --bin' },
      { 'nvim-tree/nvim-web-devicons' },
    },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {
        { 'max-perf', 'fzf-native' },
        'sk',
        winopts = {
          preview = {
            default = 'bat',
          },
        },
      }
    end,
    keys = {
      -- buffers / files
      {
        '<leader>,',
        function()
          require('fzf-lua').resume()
        end,
        desc = 'FZF Resume',
      },
      {
        '<leader><leader>',
        function()
          require('fzf-lua').files()
        end,
        desc = 'FZF Files',
      },
      {
        '<leader>.',
        function()
          require('fzf-lua').buffers()
        end,
        desc = 'FZF Buffers',
      },
      -- git
      {
        '<leader>gq',
        function()
          require('fzf-lua').live_grep { cmd = 'git grep --line-number --column' }
        end,
        desc = 'FZF Live Git Grep',
      },
      {
        '<leader>gs',
        function()
          require('fzf-lua').git_status()
        end,
        desc = 'FZF Git status',
      },
      {
        '<leader>gf',
        function()
          require('fzf-lua').git_files()
        end,
        desc = 'FZF Git files',
      },
      -- search
      {
        '<leader>qf',
        function()
          require('fzf-lua').quickfix()
        end,
        desc = 'FZF Quickfix',
      },
      {
        '<leader>qg',
        function()
          require('fzf-lua').grep_quickfix()
        end,
        desc = 'FZF Grep Quickfix',
      },
      {
        '<leader>sv',
        function()
          require('fzf-lua').grep_visual()
        end,
        desc = 'FZF Grep Current Selection',
      },
      {
        '<leader>sw',
        function()
          require('fzf-lua').grep_cword()
        end,
        desc = 'FZF Grep Current Word',
      },
      {
        '<leader>sg',
        function()
          require('fzf-lua').live_grep()
        end,
        desc = 'FZF Live Grep',
      },
      {
        '<leader>sr',
        function()
          require('fzf-lua').live_grep_resume()
        end,
        desc = 'FZF Resume Live Grep',
      },
      {
        '<leader>sG',
        function()
          require('fzf-lua').live_grep_glob()
        end,
        desc = 'FZF Live Grep Glob',
      },
      {
        '<C-g>',
        function()
          require('fzf-lua').grep_visual()
        end,
        desc = 'FZF Grep Visual Selection',
        mode = { 'v' },
      },
      -- LSP
      {
        '<leader>cd',
        function()
          require('fzf-lua').diagnostics_document()
        end,
        desc = 'FZF Document Diagnostics',
      },
      {
        '<leader>cr',
        function()
          require('fzf-lua').lsp_references()
        end,
        desc = 'FZF LSP References',
      },
      {
        '<leader>cf',
        function()
          require('fzf-lua').lsp_definitions()
        end,
        desc = 'FZF LSP Definitions',
      },
      {
        '<leader>cs',
        function()
          require('fzf-lua').lsp_document_symbols()
        end,
        desc = 'FZF LSP Document Symbols',
      },
      -- misc
      {
        '<leader>lf',
        function()
          require('fzf-lua').builtin()
        end,
        desc = 'FZF Commands',
      },
    },
  },
}
