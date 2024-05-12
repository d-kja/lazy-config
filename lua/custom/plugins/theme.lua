return {
  -- {
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   opts = {
  --     style = 'moon',
  --     transparent = true,
  --     styles = {
  --       sidebars = 'transparent',
  --       floats = 'transparent',
  --     },
  --   },
  --   init = function()
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     vim.cmd.colorscheme 'tokyonight-storm'
  --
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  {
    'Enonya/yuyuko.vim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- NOTE: Setting up transparent background
    init = function()
      vim.cmd.colorscheme 'yuyuko'

      vim.cmd.hi 'Comment gui=none'
      vim.cmd.hi 'Normal guibg=none'
      vim.cmd.hi 'Normal ctermbg=none'
      vim.cmd.hi 'NonText guibg=none'
      vim.cmd.hi 'NonText guibg=none'
    end,
  },
  -- {
  --   'shaunsingh/nord.nvim',
  --   config = function()
  --     vim.g.nord_contrast = false
  --     vim.g.nord_borders = true
  --     vim.g.nord_disable_background = true
  --     vim.g.nord_cursorline_transparent = false
  --     vim.g.nord_enable_sidebar_background = false
  --     vim.g.nord_italic = false
  --     vim.g.nord_uniform_diff_background = true
  --     vim.g.nord_bold = false
  --   end,
  -- },
  {
    'xiyaowong/transparent.nvim',
    config = function()
      local transparent = require 'transparent'

      transparent.setup {
        groups = {
          'Normal',
          'NormalNC',
          'Comment',
          'Constant',
          'Special',
          'Identifier',
          'Statement',
          'PreProc',
          'Type',
          'Underlined',
          'Todo',
          'String',
          'Function',
          'Conditional',
          'Repeat',
          'Operator',
          'Structure',
          'LineNr',
          'NonText',
          'SignColumn',
          'CursorLine',
          'CursorLineNr',
          'StatusLine',
          'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = {
          'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
          'NvimTreeNormal', -- NvimTree
        },
        exclude_groups = {},
      }

      transparent.clear_prefix 'NeoTree'
    end,
  },

  -- NOTE: Override lazyvim config
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'yuyuko',
    },
  },
}
