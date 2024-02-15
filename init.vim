"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
"set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.config/nvim/dein')

  " XDG base direcory compartible
  let g:dein#cache_directory = $HOME . '/.cache/dein'

  " dein begin
  call dein#begin($HOME . '/.config/nvim/dein')

 " プラグインリストを収めた TOML ファイル
 " 予め TOML ファイル（後述）を用意しておく
 let s:toml_dir  = $HOME . '/.config/nvim/dein/toml' 
 let s:toml      = s:toml_dir . '/dein.toml'
 let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

 " TOML を読み込み、キャッシュしておく
 call dein#load_toml(s:toml,      {'lazy': 0})
 call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Vim setting==================================
"Vim設定
syntax enable

set number
set title
set ruler
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:% ",eol:↲
set mouse=a
set incsearch "検索ワードの最初の文字を入力した時点で検索を開始する
set hlsearch "検索結果をハイライトする
set nowrap
set showmatch "カッコの対応関係を表示する
set whichwrap=b,s,h,l,<,>,[,],~
set nowrapscan
set ignorecase
set smartcase "小文字のみで検索した時に大文字小文字の区別をなくす
set hidden
set history=2000
set autoindent "改行時に前の行のインデントを保持する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cindent "c言語スタイルのインデントを自動入力する
set expandtab
set tabstop=2
set softtabstop=2 "tabstopと同じ量のスペースがtabキーを押した時に挿入される
set shiftwidth=2
"set ambiwidth=double "これつけるとairlineがバグる
set helplang=en
set backspace=indent,eol,start
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu wildmode=list:full
"入力中のコマンドを表示する
set showcmd
" statusline
"set statusline=%F%r%h%=
set encoding=utf8
scriptencoding
set fileencoding=utf-8 "ファイルエンコーディングの自動判別対象を指定する
"set fileencodings=utf-8,cp932,sjis,euc-jp,latin1 "文字コードの自動識別
set clipboard=unnamed "vimでyankしたテキストをクリップボードに格納する
set completeopt=menuone "プレビュー廃止
set wrap "折り返し有効

"全角スペースの可視化
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"文字コードの自動識別
"if &encoding !=# 'utf-8'
"  set encoding=japan
"  set fileencoding=japan
"endif
"if has('iconv')
"  let s:enc_euc = 'euc-jp'
"  let s:enc_jis = 'iso-2022-jp'
"  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
"    let s:enc_euc = 'eucjp-ms'
"    let s:enc_jis = 'iso-2022-jp-3'
"  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
"    let s:enc_euc = 'euc-jisx0213'
"    let s:enc_jis = 'iso-2022-jp-3'
"  endif
"  if &encoding ==# 'utf-8'
"    let s:fileencodings_default = &fileencodings
"    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
"    let &fileencodings = &fileencodings .','. s:fileencodings_default
"    unlet s:fileencodings_default
"  else
"    let &fileencodings = &fileencodings .','. s:enc_jis
"    set fileencodings+=utf-8,ucs-2le,ucs-2
"    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
"      set fileencodings+=cp932
"      set fileencodings-=euc-jp
"      set fileencodings-=euc-jisx0213
"      set fileencodings-=eucjp-ms
"      let &encoding = s:enc_euc
"      let &fileencoding = s:enc_euc
"    else
"      let &fileencodings = &fileencodings .','. s:enc_euc
"    endif
"  endif
"  unlet s:enc_euc
"  unlet s:enc_jis
"endif
"if has('autocmd')
"  function! AU_ReCheck_FENC()
"    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
"      let &fileencoding=&encoding
"    endif
"  endfunction
"  autocmd BufReadPost * call AU_ReCheck_FENC()
"endif

colorscheme ofirkai
let g:rehash256 = 1
highlight Normal ctermbg=none

"Ctrl-c をESCと同じ動きに
nnoremap <C-c> <ESC>
inoremap <C-c> <ESC>

let mapleader = "\<Space>"

nnoremap <Leader>w  :<C-u>w<CR>
nnoremap <Leader>q  :<C-u>q<CR>
nnoremap <Leader>Q  :<C-u>q!<CR>

" 画面分割
nnoremap <silent> <Leader>s :<C-u>sp<CR><C-w><C-w>
nnoremap <silent> <Leader>v :<C-u>vs<CR><C-w><C-w>

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;

"カーソルを表示行で移動する。物理行移動は<C-n>,<C-p>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" コードのインデント整形
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" ファイルタイプ別のプラグイン/インデントを有効にする
"filetype plugin indent on
"filetype plugin on
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
" """"""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
" """"""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
" """"""""""""""""""""""""""""""
if has("autocmd")
   autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" netrw用の設定
" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" ヘッダを非表示にする
let g:netrw_banner=0
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" Neovim terminalモード設定
" 下分割でターミナルモードを起動
nnoremap <silent> tx <cmd>belowright new<CR><cmd>terminal<CR>
" ターミナルを開いたらに常にinsertモードに入る
autocmd TermOpen * :startinsert
" ターミナルモードで行番号を非表示
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber

"""""""""""""""""""""""""""""
" クリップボード設定
set clipboard+=unnamedplus
