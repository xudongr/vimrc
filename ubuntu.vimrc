" wget https://github.com/vim/vim/archive/v8.0.0666.tar.gz
" tar xvzf v8.0.0666.tar.gz
" ./configure --with-features=huge --enable-pythoninterp=yes  --enable-cscope --enable-fontset --enable-perlinterp --enable-rubyinterp --with-python-config-dir=/usr/lib/python2.7/config --prefix=/usr/local
" make
" sudo make install
" alias vi='/usr/local/bin/vim '

"vi /usr/local/Cellar/vim/7.4.1016/share/vim/vim74/ftplugin/python.vim,
"http://vim.1045645.n5.nabble.com/FileType-conditional-td1141787.html
"let g:loaded_youcompleteme = 0

" https://superuser.com/questions/302186/vim-scrolls-very-slowly-when-a-line-is-too-long
" Syntax coloring lines that are too long just slows down the world
set synmaxcol=1000
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

"set list listchars=eol:¬,tab:▸\ ,trail:.,
" keep 3 lines when scrolling"
set scrolloff=3
set shiftround

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
" Plug 'rizzatti/dash.vim'
" Plug 'altercation/vim-colors-solarized.git'
Plug 'w0ng/vim-hybrid'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'lfv89/vim-interestingwords'    " https://github.com/lfv89/vim-interestingwords
Plug 'tpope/vim-sensible'
Plug 'elzr/vim-json'
" Plug 'posva/vim-vue'
" Plug 'sekel/vim-vue-syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'PegasusWang/vim-ubuntu-pastebin'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'jszakmeister/vim-togglecursor'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/LargeFile'
Plug 'mhinz/vim-startify'
" Plug 'rykka/riv.vim'    " rst
" Plug 'kchmck/vim-coffee-script'
" Plug 'othree/html5.vim'

" for javascript and react
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'jelera/vim-javascript-syntax'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {'do': 'npm install -g prettier'}
Plug 'Quramy/tsuquyomi'
Plug 'groenewege/vim-less'

" Plug 'glench/vim-jinja2-syntax'
" Plug 'moll/vim-node'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'    " https://github.com/junegunn/gv.vim git commit browser
" Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-eunuch'
" Plug 'cakebaker/scss-syntax.vim'
"Plug 'gorodinskiy/vim-coloresque'
" Plug 'Valloric/YouCompleteMe'
"
let g:deoplete#enable_at_startup = 1
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'marijnh/tern_for_vim'

" let Vundle manage Vundle
Plug 'solarnz/thrift.vim'
" https://github.com/gu-fan/InstantRst
Plug 'Rykka/InstantRst', { 'do': 'pip install https://github.com/Rykka/instant-rst.py/archive/master.zip'}
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
" Plug 'python-mode/python-mode'
Plug 'zchee/deoplete-jedi'

Plug 'tpope/vim-dispatch'
Plug 'fatih/vim-go'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'    " 快速移动插件, ',,w'可以在单词上出现前缀，然后快速跳转
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'ryanoasis/vim-devicons'

Plug 'xolox/vim-misc'
Plug 'farmergreg/vim-lastplace'
" Plug 'xolox/vim-easytags'
" let g:easytags_python_enabled = 0
" let g:easytags_python_script = 0
" autocmd FileType python let b:easytags_auto_highlight = 0

" 模糊搜索，使用z/支持模糊搜索
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)


"Plug 'Valloric/YouCompleteMe'
" Plug 't9md/vim-quickhl'
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

call plug#end()


" for nerdtree
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>
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

" ctrlp, 在~/.agignore添加一行node_modules
" https://stackoverflow.com/questions/24479101/vim-ctrlp-not-parsing-ag-silver-search-ignore-option-correctly
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|pyc|pyo)$',
  \ }
if executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
  " and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif


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
set statusline+=%*

" 评论配置
" let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1


"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

 "比较喜欢用tab来选择补全...
"function! MyTabFunction ()
    "let line = getline('.')
    "let substr = strpart(line, -1, col('.')+1)
    "let substr = matchstr(substr, "[^ \t]*$")
    "if strlen(substr) == 0
        "return "\<tab>"
    "endif
    "return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
"endfunction
"inoremap <tab> <c-r>=MyTabFunction()<cr>


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

" 退出快捷键
inoremap jj <Esc>`^
inoremap hhh <Esc>`^
inoremap kkk <Esc>`^
inoremap lll <Esc>`^
inoremap ooo <Esc>`^o
inoremap <C-k> <Esc>`^
inoremap <leader>w <Esc>:w<cr>
noremap <leader>e :q<cr>
noremap <leader>E :qa!<cr>
noremap <leader>b :bd<cr>
noremap <leader>s :vs<cr>  " vertical split
noremap <leader>r :e!<cr>  " reload without save
noremap <leader>w :w<cr>

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
