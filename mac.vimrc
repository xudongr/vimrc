set synmaxcol=1000
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

"set list listchars=eol:¬,tab:▸\ ,trail:.,
" keep 3 lines when scrolling"
set scrolloff=3
set shiftround

set guifont=Monaco:h16
set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set cursorline
"setlocal textwidth=80
set tags=tags
set noautochdir    " 注意这个自动切换目录会使rope找目录不正确，禁用，坑死我
autocmd BufRead,BufNewFile *.py set et ts=4 sw=4 sts=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set nu
if has('gui_running')
    set background=dark
else
    set background=dark
endif

" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
endif

source $VIMRUNTIME/vimrc_example.vim
set langmenu=en_US
let $LANG= 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set splitright
"turn off vim compatible check
set nocompatible
"check file type
set completeopt=longest,menu
"histroy line count
set history=1000
set showmatch
"left-down status line
set ruler
"auto match targets
set incsearch
"high light search
set hlsearch
"auto backup file with filename+~
set nobackup
set noundofile
set title
set foldenable
"fold code by syntax 'cmd':
"'zi' open/close all folds
"'za' open/close current fold
"'zM' close all folds
"'zR' open all folds
set foldmethod=indent
"set foldmethod=marker
"set foldmethod=indent
set foldcolumn=0
set foldopen=all
"set foldclose=all
"colorscheme evening
"set cinoptions+={2,0,p0,t0
set formatoptions=tcqr
set nu


call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'gregsexton/MatchTag'
Plug 'tpope/tpope-vim-abolish'
Plug 'Chiel92/vim-autoformat' " https://github.com/Chiel92/vim-autoformat for code formatter
Plug 'terryma/vim-expand-region'
Plug 'stephpy/vim-yaml'
Plug 'chase/vim-ansible-yaml'
"Plug 'ianva/vim-youdao-translater'  " https://github.com/ianva/vim-youdao-translater
Plug 'ntpeters/vim-better-whitespace'
Plug 'fullybaked/toggle-numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
" Plug 'altercation/vim-colors-solarized.git'
Plug 'w0ng/vim-hybrid'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'lfv89/vim-interestingwords'    " https://github.com/lfv89/vim-interestingwords
Plug 'tpope/vim-sensible'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'sekel/vim-vue-syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'PegasusWang/vim-ubuntu-pastebin'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'jszakmeister/vim-togglecursor'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/LargeFile'
Plug 'mhinz/vim-startify'
Plug 'rykka/riv.vim'    " rst
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'    " https://github.com/junegunn/gv.vim git commit browser
" Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-eunuch'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'gorodinskiy/vim-coloresque'
" Plug 'Valloric/YouCompleteMe'
"
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'marijnh/tern_for_vim'

Plug 'vim-scripts/BufOnly.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'sukima/xmledit'
Plug 'mattn/emmet-vim'
Plug 'heavenshell/vim-pydocstring'
" Plug 'sjl/gundo.vim'
Plug 'Valloric/ListToggle'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Lokaltog/vim-powerline'

Plug 'tpope/vim-dispatch'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'    " 快速移动插件, ',,w'可以在单词上出现前缀，然后快速跳转
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'ryanoasis/vim-devicons'

Plug 'xolox/vim-misc'
Plug 'farmergreg/vim-lastplace'
" Plug 'xolox/vim-easytags'


"Plug 'Valloric/YouCompleteMe'
" Plug 't9md/vim-quickhl'
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1


Plug 'keith/swift.vim'
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']


Plug 'rhysd/vim-clang-format'

call plug#end()


" Plug rhysd/vim-clang-format map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

" For emmemt only avilable for html,css,sass
let g:user_emmet_install_global = 0
autocmd FileType html,htmldjango,css,scss.css,sass,jsx,javascript,javascript.jsx  EmmetInstall
let g:user_emmet_expandabbr_key = '<C-j>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends': 'jsx',
\      'quote_char': "'",
\  },
\}


autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
"新建.py,.cc,.java,.sh,
"定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# -*- coding:utf-8 -*-")
        normal G
        normal o
        normal o
        call setline(5, "if __name__ == '__main__':")
        call setline(6, "    pass")
    endif
endfunc


function HeaderSh()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.sh call HeaderSh()



" for nerdtree
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
            \ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.svn$', '\.swp$',
            \ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.ropeproject$',
            \ ]

" for Tagbarbar, sudo apt-get install ctags
"nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0    " sort by sourcefile
"let g:tagbar_show_linenumbers = 1
set updatetime=1000    " ms update


" for airline
let g:airline_powerline_fonts=1
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
function! ArilineInit()
    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
    let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%F'])
    "let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['%P'])
    let g:airline_section_y = airline#section#create(['%B'])
    let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction
autocmd VimEnter * call ArilineInit()

" change tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" https://stackoverflow.com/questions/15583346/how-can-i-temporarily-make-the-window-im-working-on-to-be-fullscreen-in-vim
nnoremap tt :tab split<CR>

" 高亮当前选中单词
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
nnoremap <silent> <F3> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>



"http://vimawesome.com/plugin/scss-syntax-vim
au BufRead,BufNewFile *.scss set filetype=scss.css


"http://vimawesome.com/plugin/rainbow-parentheses-vim   花里胡哨的彩虹括号^_^
"http://www.wklken.me/posts/2015/06/07/vim-plugin-rainbowparentheses.html
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"语法检查配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 评论配置
" let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1



let g:LargeFile=1


" for golang https://github.com/fatih/vim-go
" https://github.com/fatih/vim-go-tutorial
let g:go_version_warning = 0
set autowrite
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_list_type = "quickfix"
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['golint']
let g:go_metalinter_autosave = 1


" for html
autocmd BufNewFile,BufRead *.html setlocal expandtab tabstop=2 shiftwidth=2

" for json
let g:vim_json_syntax_conceal = 0
autocmd FileType json,javascript,html,jsx,javascript.jsx setlocal ts=2 sts=2 sw=2 expandtab

" https://github.com/wincent/wincent/blob/bff31c32e427c5913d1eed0b0c1b3da24e8ba8ba/roles/dotfiles/files/.vim/plugin/settings.vim#L38
if has('folding')
  if has('windows')
	set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

set formatoptions+=n                  " smart auto-indenting inside numbered lists
set guioptions-=T                     " don't show toolbar
set hidden                            " allows you to hide buffers with unsaved changes without being prompted
set highlight+=c:LineNr               " blend vertical separators with line numbers
set laststatus=2                      " always show status line
set lazyredraw                        " don't bother updating screen during macro playback


" https://github.com/lfv89/vim-interestingwords 高亮感兴趣的 word
nnoremap <silent> <leader>f :call InterestingWords('n')<cr>
nnoremap <silent> <leader>F :call UncolorAllWords()<cr>

" https://github.com/jaxbot/semantic-highlight.vim
nnoremap <Leader>h :SemanticHighlightToggle<cr>

" 禁止 startify 自动切换目录
let g:startify_change_to_dir = 0


" solarized 主题
" let g:solarized_termtrans = 1
" set background=dark
" colorscheme solarized
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorschema hybrid, https://github.com/w0ng/vim-hybrid
set background=dark
silent! colorscheme hybrid


" 用 ,a 搜索当前 cursor 下单词
if executable('ag')
    noremap <leader>a :Ag! -w "<cword>"<cr>
else
    noremap <Leader>a :Ack <cword><cr>
endif

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Plug 'fullybaked/toggle-numbers.vim'
nmap ,n :LineNumberToggle<cr>

" https://github.com/ianva/vim-youdao-translater settings
vnoremap <silent> <C-Y> :<C-u>Ydv<CR>
nnoremap <silent> <C-Y> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" add :FormatJSON command, https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python3 -c "import json, sys, collections; print(json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2))"
com! FormatJSONPy3 %!python3 -m json.tool
com! FormatJSONPy2 %!python -m json.tool
com! FormatJSONPy2Utf8 %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2)"


" sudo pip install yamllint
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Setting up how to display whitespace characters
set list
set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~


" javascript plugin config
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#print_width = 120
let g:prettier#exec_cmd_async = 1
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#bracket_spacing = 'true'

" ale config
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
let g:ale_sign_error = "\U2717"
let g:ale_sign_warning =  "\ue009"
let g:ale_linters = {'python': []}

" markdown
let g:vim_markdown_conceal = 0
