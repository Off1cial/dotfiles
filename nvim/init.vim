set termguicolors
set signcolumn=no
set background=dark
"set number


call plug#begin('~/.local/share/nvim/autoload/plug.vim')


" Colour schemes
Plug 'rebelot/kanagawa.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'tanvirtin/monokai.nvim'
Plug 'khoido2003/monokai-v2.nvim'
Plug 'catppuccin/nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'Mofiqul/vscode.nvim'
"binary 
Plug 'jackplus-xyz/binary.nvim'


Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'branch': 'master', 'do': ':TSUpdate' }

call plug#end()

let g:thematrix_background_color = "dark"


" disable CoC parameter hints / inlay hints
let g:coc_enable_parameter_hints = 0
let g:coc_inlay_hints_enable = 0

syntax on

let mapleader = " "
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>

" indentation
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set cindent

lua << EOF
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'vscode',
  }
})
EOF


lua << EOF
require('nvim-treesitter.configs').setup({
  branch = 'master',
  ensure_installed = {"c", "cpp", "lua", "python"},
  highlight = { 
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = false },
  autopairs = { enable = true },
})
EOF

" gruvbox bg 
" overrides = {
"   Normal = { bg = "#121212" },
"  },
"
"
"
lua << EOF
require("gruvbox").setup({
  contrast = "hard",
  transparent = false,
  bold = false,
})
EOF



lua << EOF
require("tokyonight").setup({
  style = "night",
})
EOF

lua << EOF
require('kanagawa').setup({
  transparent = false,
  bold = false,
  italic = false,
})
EOF

lua << EOF
require('binary').setup({
  style = "dark",
  colors = {
    bg = "#00ff00",
    fg = "#000000"
    },
})
EOF

lua << EOF
require("onedarkpro").setup({
  colors = {
    bg = "#1e2127"
  }
})
EOF


lua << EOF
require("monokai-v2").setup({
  -- Basic settings
  transparent_background = false,
  terminal_colors = true,
  devicons = true,
  
  -- Syntax highlighting styles
  styles = {
    comment = { italic = false },
    keyword = { italic = false },
    type = { italic = false },
    storageclass = { italic = false },
    structure = { italic = false },
    parameter = { italic = false },
    annotation = { italic = false },
    tag_attribute = { italic = false },
  },
  
  
  -- Filter selection (default: classic for dark, light for light background)
  filter = "spectrum", -- classic | light | machine | octagon | pro | ristretto | spectrum
  
  
  
  
})

EOF

lua << EOF
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
})
EOF

lua << EOF
require("vscode").setup({
  transparent = true,
})
EOF

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'material'
let g:gruvbox_material_enable_italic = 0
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_float_style = 'dim'
let g:gruvbox_material_better_performance = 1


"kanagawa, monochrome, oxocarbon, gruvbox, thematrix, doom-one,
"github_dark_default
colorscheme kanagawa

highlight Normal guibg=NONE ctermbg=NONE
highlight NormalNC guibg=NONE ctermbg=NONE
highlight NormalFloat guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

highlight! link @function Function
highlight! link @function.call Function
highlight! link @function.call Function
highlight! link @function.builtin Function



