-- Tab set to two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.signcolumn = 'no'

vim.opt.mouse=""

vim.g.mapleader=";"

vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/romgrk/barbar.nvim',
  'https://github.com/nvim-lualine/lualine.nvim'
})

-- Key Mappings
require("keymap")

vim.keymap.set('n', 'gK', function()

  local new_config = not vim.diagnostic.config().virtual_lines

  vim.diagnostic.config({ virtual_lines = new_config })

end, { desc = 'Toggle diagnostic virtual_lines' })

--vim.lsp.log.set_level('info')
vim.lsp.enable('rust_analyzer')
vim.lsp.config('elp',{
	diagnostics = {
		disabled = {
			"W0017",
			"W0030",
			"W0031",
			"W0032"
		}
	}})
vim.lsp.enable('elp')

vim.diagnostic.config({
  virtual_lines = {
    current_line = true, 
  }
})


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
