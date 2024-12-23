local version = vim.version()
local header = {
  '',
  '',
  '',
  '',
  '',
  '        _                       __  _        ',
  '      /    \\                 /      \\      ',
  '     "      \\              /         \\     ',
  '     |       |Oo          o|           |     ',
  '     `    \\  |OOOo......oOO|   /      |     ',
  '      `    \\OOOOOOOOOOOOOOO\\//       /     ',
  '        \\ _o\\OOOOOOOOOOOOOOOO//.___ /      ',
  '         \\OOOOOOOOOOOOOOOOOOOOOOOo.___      ',
  "          OO'* `OOOOOOOOOO'*  `OOOOO--       ",
  "          OO.   OOOOOOOOO'    .OOOOO         ",
  "          `OOOooOOOOOOOOOooooOOOOOO'         ",
  "            'OOOOOOOOOOOOOOOOOOOO'           ",
  "             `OOOOOOOOOOOOOOOO'              ",
  "          ===='OOOOOOOOOOO'====              ",
  "            ====`(____)'====                 ",
  '',
  '',
  '',
}

local center = {
  {
    desc = 'Find File ',
    key = 'f',
    icon = ' ',
    action = 'require("fzf-lua").files',
    group = '@markup.heading.1.markdown',
  },
  {
    desc = 'New File ',
    key = 'n',
    icon = ' ',
    action = 'enew',
    group = '@markup.heading.2.markdown',
  },
  {
    desc = 'Reload Session ',
    key = 'r',
    icon = ' ',
    action = 'SessionLoad',
    group = '@markup.heading.3.markdown',
  },
  {
    desc = 'Nvim config ',
    key = 'c',
    icon = ' ',
    action = 'require("fzf-lua").find_files({ cwd = vim.fn.stdpath("config")})',
    group = '@markup.heading.4.markdown',
  },
  {
    desc = 'Dots',
    key = 'd',
    icon = ' ',
    action = 'require("fzf-lua").find_files({ cmd = "yadm list --files -a" })',
  },
  {
    desc = 'Exit ',
    key = 'q',
    icon = ' ',
    action = 'exit',
    group = '@markup.heading.6.markdown',
  },
}

local footer = {
  '',
  'nvim version ' .. version.major .. '.' .. version.minor,
}

vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'dashboard',
  group = vim.api.nvim_create_augroup('Dashboard_au', { clear = true }),
  callback = function()
    vim.cmd [[
            setlocal buftype=nofile
            setlocal nonumber norelativenumber nocursorline noruler fillchars=eob:\
        ]]
  end,
})

return {
  {
    'nvimdev/dashboard-nvim',
    lazy = false,
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = header,
          center = center,
          footer = footer,
        },
      }
    end,
    opts = {
      hide = {
        statusline = false,
      },
    },
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
