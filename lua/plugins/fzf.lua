return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = {
      { 'junegunn/fzf', build = './install --bin' },
      { 'nvim-tree/nvim-web-devicons' },
    },
    config = function()
      local fzf_lua = require 'fzf-lua'
      local function open_scratch_buffer(filetype)
        local date_time = os.date '%Y-%m-%d_%H-%M-%S'
        local scratch_dir = vim.fn.expand '~/.local/share/nvim/scratches/'
        local filename = scratch_dir .. date_time .. '.' .. filetype

        vim.fn.mkdir(scratch_dir, 'p')
        vim.cmd('vnew ' .. vim.fn.fnameescape(filename))
        vim.api.nvim_set_option_value('filetype', filetype, {})
        vim.api.nvim_command 'write'
      end
      function _G.select_filetype_and_create_scratch()
        local syntax_dir = vim.fn.globpath(vim.fn.getenv 'VIMRUNTIME', 'syntax/*.vim', false, true)
        local filetypes = {}
        for _, filepath in ipairs(syntax_dir) do
          local filetype = filepath:match 'syntax[/\\](.+).vim$'
          if filetype then
            table.insert(filetypes, filetype)
          end
        end

        fzf_lua.fzf_exec(filetypes, {
          prompt = 'Filetypes> ',
          actions = {
            ['default'] = function(selected)
              open_scratch_buffer(selected[1])
            end,
          },
        })
      end

      fzf_lua.setup {
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
        '<leader>f',
        function()
          require('fzf-lua').files()
        end,
        desc = 'Git files',
      },
      {
        '<C-s>',
        function()
          _G.select_filetype_and_create_scratch()
        end,
        desc = 'Create scratch with ft',
      },
      {
        '<leader>,',
        function()
          require('fzf-lua').lgrep_curbuf()
        end,
        desc = 'Resume',
      },
      {
        '<leader>.',
        function()
          require('fzf-lua').buffers()
        end,
        desc = 'Buffers',
      },
      -- git
      {
        '<leader><leader>',
        function()
          require('fzf-lua').git_files()
        end,
        desc = 'Files',
      },
      {
        '<leader>gq',
        function()
          require('fzf-lua').live_grep { cmd = 'git grep --line-number --column' }
        end,
        desc = 'Live Git Grep',
      },
      {
        '<leader>gs',
        function()
          require('fzf-lua').git_status()
        end,
        desc = 'Git status',
      },
      -- search
      {
        '<leader>qf',
        function()
          require('fzf-lua').quickfix()
        end,
        desc = 'Quickfix',
      },
      {
        '<leader>qg',
        function()
          require('fzf-lua').grep_quickfix()
        end,
        desc = 'Grep Quickfix',
      },
      {
        '<leader>qs',
        function()
          require('fzf-lua').quickfix_stack()
        end,
        desc = 'Quickfix',
      },
      {
        '<leader>sv',
        function()
          require('fzf-lua').grep_visual()
        end,
        desc = 'Grep Current Selection',
      },
      {
        '<leader>sw',
        function()
          require('fzf-lua').grep_cword()
        end,
        desc = 'Grep Current Word',
      },
      {
        '<leader>sg',
        function()
          require('fzf-lua').live_grep()
        end,
        desc = 'Live Grep',
      },
      {
        '<leader>sr',
        function()
          require('fzf-lua').live_grep_resume()
        end,
        desc = 'Resume Live Grep',
      },
      {
        '<leader>sG',
        function()
          require('fzf-lua').live_grep_glob()
        end,
        desc = 'Live Grep Glob',
      },
      {
        '<C-g>',
        function()
          require('fzf-lua').grep_visual()
        end,
        desc = 'Grep Visual Selection',
        mode = { 'v' },
      },
      -- LSP
      {
        '<leader>cd',
        function()
          require('fzf-lua').diagnostics_document()
        end,
        desc = 'Document Diagnostics',
      },
      {
        '<leader>cr',
        function()
          require('fzf-lua').lsp_references()
        end,
        desc = 'LSP References',
      },
      {
        '<leader>cD',
        function()
          require('fzf-lua').lsp_definitions()
        end,
        desc = 'LSP Definitions',
      },
      {
        '<leader>cs',
        function()
          require('fzf-lua').lsp_document_symbols()
        end,
        desc = 'LSP Document Symbols',
      },
      -- misc
      {
        '<leader>lf',
        function()
          require('fzf-lua').builtin()
        end,
        desc = 'FZF Commands',
      },
      {
        '<leader>j',
        function()
          require('fzf-lua').jumps()
        end,
        desc = 'FZF Commands',
      },
    },
  },
}
