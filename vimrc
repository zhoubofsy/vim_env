"runtime! debian.vim
set tabstop=4
set term=screen
set nofoldenable
set hlsearch
set expandtab
set softtabstop=4
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'winmanager'
Bundle 'taglist.vim'
"Bundle 'minibufexpl.vim'
Bundle 'bufexplorer.zip'
Bundle 'https://github.com/wesleyche/SrcExpl.git'
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle 'grep.vim'
Bundle 'Ack.vim'
Bundle 'dyng/ctrlsf.vim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'

"
filetype plugin indent on
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
syntax enable
syntax on
set background=dark
"colorscheme torte
colorscheme solarized
"set fillchars+=stl:\ ,stlnc:\
set laststatus=2
"set t_Co=256
"let g:Powerline_symbols='unicode'
let g:Powerline_symbols='fancy'
set guifont=PowerlineSymbols\ for\ Powerline

"SrcExpl:
nmap <F8> :SrcExplToggle<CR>
let g:SrcExpl_winHegiht = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
"let g:SrcExpl_pluginList = ["__Tag_List__","_NERD_tree_","Source_Explorer"]
let g:SrcExpl_pluginList = ["__Tag_List__","_NERD_tree_"]
let g:SrcExpl_searchLocalDef = 1
let g:SrcExpl_isUpdateTags = 0
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
let g:SrcExpl_updateTagsKey = "<F12>"
let g:SrcExpl_prevDefKey = "<F3>"
let g:SrcExpl_nextDefKey = "<F4>"

"cscope
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	if filereadable("cscope.out")
		cs add ./cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
	set cscopetag
	set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif
nmap <C-\>s :cs f s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs f g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs f d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs f c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs f t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs f e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs f f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs f i <C-R>=expand("<cword>")<CR><CR>

nmap <F5> :cp<CR>
nmap <F6> :cn<CR>

"CtrlSF:
let g:ctrlsf_auto_close = 0
let g:ctrlsf_case_sensitive = 'no'
let g:ctrlsf_context = '-B 5 -A 3'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_mapping = {"next":"n","prev":"p"}
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '30%'

"The NERD Tree:
map <Leader>] :NERDTreeToggle<CR>
let g:NERDTreeShowFiles = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrows = 1

"Tlist
map <Leader>[ :Tlist<CR>

"minibufexplorer:
map <F3> :bn<CR>
map <F4> :bp<CR>
"let g:bufExplorerMaxHeight=2
"let g:miniBufExplorerMoreThanOne=0
