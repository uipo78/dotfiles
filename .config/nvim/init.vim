let mapleader="\<SPACE>"


" Neovim-basic UI stuff {
    set smartindent
    set showmatch
    set number
    set formatoptions+=o
    set expandtab
    set tabstop=4
    set shiftwidth=4

    set splitbelow  " Horizontal split below current.
    set splitright  " Vertical split to the right of current.

    " Relative numbering toggler.
    function! NumberToggle()
      if(&relativenumber == 1)
        set nornu
        set number
      else
        set rnu
      endif
    endfunc

    " Toggle between normal and relative numbering.
    nnoremap <leader>r :call NumberToggle()<cr>

    " TODO: Set relative numbering in entering Insert mode.

" }


" Configuration {
    " Switch to the current file's parent directory.
    set autochdir

    " Use ; for commands
    nnoremap ; :
    
    " Use Q to execute default register.
    nnoremap Q @q
" }


" Key bindings {
    nmap <Leader>l :bnext<CR>
    nmap <Leader>h :bprevious<CR>
" }


" vim-plug {
    " Specify a directory for plugins
    call plug#begin('~/.local/share/nvim/plugged')

    " Plugins {
        " Prettier neovim
        Plug 'bling/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ryanoasis/vim-devicons'

        " Asynchronous lint engine
        Plug 'w0rp/ale'

        " Autocomplete
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        let g:deoplete#enable_at_startup = 1

        " Linters
        Plug 'adrienverge/yamllint'
        Plug 'hadolint/hadolint'
        Plug 'jimhester/lintr'
        Plug 'jorisroovers/gitlint'
        Plug 'purcell/sqlint'
        Plug 'PyCQA/flake8'
        Plug 'stedolan/jq' " More than a linter but whatever

        " Git stuff
        Plug 'airblade/vim-gitgutter'
        Plug 'junegunn/vim-github-dashboard', {'on': ['GHDashboard', 'GHActivity']}
        Plug 'tpope/vim-fugitive'

        " Other
        Plug 'godlygeek/tabular'  " so that you don't become suicidal while making markdown tables 
        Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}
        Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    " }

    " Initialize plugin system
    call plug#end()
" }


" Plugin settings {
    " Airline {
        let g:airline_powerline_fonts=1
    " }
" }
