local leet_arg = 'leetcode.nvim'
return {
  {
    'kawre/leetcode.nvim',
    enabled = function()
      return vim.fn.hostname() == 'opossum.local'
    end,
    lazy = leet_arg ~= vim.fn.argv(0, -1),
    dependencies = {
      'ibhagwan/fzf-lua',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      arg = leet_arg,
      lang = 'python3',
    },
  },
}
