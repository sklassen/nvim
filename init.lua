-- Tab set to two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.signcolumn = 'no'

vim.opt.mouse=none

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'joshdick/onedark.vim'

  -- Tabs
  use 'bagrat/vim-buffet'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons'}
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},

      -- Autocompletion
      --{'hrsh7th/nvim-cmp'},
      --{'hrsh7th/cmp-buffer'},
      --{'hrsh7th/cmp-path'},
      --{'saadparwaiz1/cmp_luasnip'},
      --{'hrsh7th/cmp-nvim-lsp'},
      --{'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      --{'L3MON4D3/LuaSnip'},
      --{'rafamadriz/friendly-snippets'},
    }
  }

end)

require("diagnostic")

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

--vim.opt.termguicolors = true
--pcall(vim.cmd, 'colorscheme onedark')

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

-- Clipboard
-- vim.api.nvim_set_option("clipboard","unnamed")
-- vim.opt.clipboard = "unnamedplus" 

-- Key Mappings
require("keymap")

-- Rust Setup
require("rust")

