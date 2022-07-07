require('plugins')
require('impatient')

vim.g.mapleader = " "   -- Map <leader> key to space

-- Catppuccin colors
vim.g.catppuccin_flavour = 'mocha'
vim.cmd[[colorscheme catppuccin]]

vim.cmd[[set clipboard^=unnamed,unnamedplus]]
vim.cmd[[filetype plugin on]]
vim.cmd[[syntax on]]
vim.cmd[[autocmd User TelescopePreviewerLoaded setlocal number]] -- Show line numbers in telescope previewer

vim.cmd[[let g:tex_flavor='latex']]
vim.cmd[[let g:vimtex_view_method = 'skim']]
vim.cmd[[let g:vimtex_view_skim_sync = 1]]
vim.cmd[[let g:vimtex_view_skim_activate = 1]]


require("indent_blankline").setup {
  -- show_current_context = true,
  -- show_current_context_start = true,
}
require('Comment').setup()

require("better_escape").setup {
  mapping = {"jk", "jj", "kj"},
  clear_empty_lines = false, -- clear line after escaping if there is only whitespace
}

require("nvim-lsp-installer").setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  ui = {
      icons = {
          server_installed = "✓",
          server_pending = "➜",
          server_uninstalled = "✗"
      }
  }
})

require('colorizer').setup()
require('hop').setup()
require('toggleterm').setup()
require('which-key').setup{
  plugins = {

  }
}
local wk = require("which-key")
require('telescope').setup {
  defaults = {
      layout_strategy = 'flex',
      mappings = {
        i = {
          -- map actions.which_key to <C-h> (default: <C-/>)
          -- actions.which_key shows the mappings for your picker
          ["<C-h>"] = "which_key"
        }
      }
  },
  extensions = {
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      grouped = true,
      dir_icon = ""
      -- sorting_strategy = 'ascending',
    },
  },
}

require('telescope').load_extension('file_browser', 'fzf')

require('trouble').setup {
  icons = false
}

require("nvim-treesitter.configs").setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  }
}

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename', 'lsp_progress'},
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
  extensions = {}
}

require('gitsigns').setup()

-- coq
local lspconfig = require('lspconfig')
vim.g.coq_settings = { auto_start = 'shut-up' } -- Automatically start coq

-- Enable some language servers with the additional completion capabilities offered by coq_nvim
local servers = {'pyright', 'texlab', 'marksman'}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end

require('coq_3p') {
  { src = "vimtex", short_name = "vTEX" },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }