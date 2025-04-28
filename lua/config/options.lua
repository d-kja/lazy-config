-- Automatically loaded before lazy.nvim startup
-- Default options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- WARN: [[ Globals ]]

local opt = vim.opt
local keymap = vim.keymap

-- INFO: [[ Options ]]

-- Configure NETRW view
vim.g.netrw_banner = 0 -- Hide banner
-- vim.g.netrw_altv = 1 -- Open with right splitting
-- vim.g.netrw_liststyle = 3 -- Tree-style view
-- vim.g.netrw_browse_split = 4 -- Open in previous window
-- vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = false

-- Disable smooth scroll (shit sucks)
opt.smoothscroll = false

-- Enable break indent
opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split" -- preview incremental substitute

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.g.rustaceanvim = {
    server = {
      cmd = function()
	local mason_registry = require('mason-registry')
	if mason_registry.is_installed('rust-analyzer') then
	  -- This may need to be tweaked depending on the operating system.
	  local ra = mason_registry.get_package('rust-analyzer')
	  local ra_filename = ra:get_receipt():get().links.bin['rust-analyzer']
	  return { ('%s/%s'):format(ra:get_install_path(), ra_filename or 'rust-analyzer') }
	else
	  -- global installation
	  return { 'rust-analyzer' }
	end
      end,
    },
  }

return {}
