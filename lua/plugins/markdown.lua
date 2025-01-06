return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    cmd = 'RenderMarkdown',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    opts = {
      file_types = {
        'markdown',
      },
    },
  },
  {
    'epwalsh/obsidian.nvim',
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = {
      { 'nvim-lua/plenary.nvim', 'ibhagwan/fzf-lua', 'nvim-treesitter/nvim-treesitter', 'saghen/blink.cmp' },
    },
    config = function()
      local host = function()
        if vim.fn.hostname() == 'thomas-lawton-MBP.local' then
          return '~/Documents/sync_vault'
        else
          return '~/Notes/obsidian_notes/Notes'
        end
      end
      require('obsidian').setup {
        ui = {
          enable = true,
        },
        completion = {
          nvim_cmp = false,
        },
        workspaces = {
          {
            name = 'personal',
            path = host,
          },
        },
        daily_notes = {
          folder = 'daily',
        },
        mappings = {
          -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
          ['gf'] = {
            action = function()
              return require('obsidian').util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
          },
          -- Toggle check-boxes.
          ['<leader>ch'] = {
            action = function()
              return require('obsidian').util.toggle_checkbox()
            end,
            opts = { buffer = true },
          },
          -- Smart action depending on context, either follow link or toggle checkbox.
          ['<cr>'] = {
            action = function()
              return require('obsidian').util.smart_action()
            end,
            opts = { buffer = true, expr = true },
          },
        },
        preferred_link_style = 'wiki',
        picker = {
          name = 'fzf-lua',
          note_mappings = {
            new = '<C-x>',
            insert_link = '<C-l>',
          },
          tag_mappings = {
            tag_note = '<C-x>',
            insert_tag = '<C-l>',
          },
        },
      }
    end,
  },
}
