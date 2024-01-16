syntax on                   " syntax highlighting


filetype plugin on
filetype plugin indent on   " allow auto-indenting depending on file type


set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
"set cc=120                  " set an 80 column border for good coding style
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                 " enable spell check (may need to download language package)
set spelllang=ru,en
" set noswapfile            " disable creating swap file
set backupdir=~/.cache/vim " Directory to store backup files.


nnoremap <F2> :NERDTreeToggle<CR>
command! Nh nohlsearch

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

call plug#begin()
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'honza/vim-snippets'
 Plug 'mhinz/vim-startify'
 Plug 'kdheepak/lazygit.nvim'

 " autocompletion
 Plug 'neovim/nvim-lspconfig'
 Plug 'hrsh7th/nvim-cmp'             " Autocompletion plugin
 Plug 'hrsh7th/cmp-nvim-lsp'         " LSP source for nvim-cmp
 Plug 'hrsh7th/cmp-buffer'           " Buffer completions
 Plug 'hrsh7th/cmp-path'             " Path completions
 Plug 'hrsh7th/cmp-cmdline'          " Cmdline completions

 Plug 'vim-airline/vim-airline'

 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
call plug#end()

lua << EOF
require'lspconfig'.gopls.setup{}
require'lspconfig'.bashls.setup{}
EOF

colorscheme nightfly
