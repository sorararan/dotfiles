"""""""""""""""
" 基本
"""""""""""""""
" 文字コードはUTF-8を使う
set fenc=utf-8
set encoding=utf-8

" バックアップファイルを作らない
set nobackup
" swpファイルを作らない
set noswapfile
" undoファイルを作らない
set noundofile

" 編集中のファイルが変更されたら自動で読み直す
set autoread
" 保存されていないファイルがあっても別ファイルを開ける
set hidden


"""""""""""""""
" 見た目
"""""""""""""""
" カラースキーム
colorscheme elflord
" ダーク系のカラースキームを使う
set background=dark
" シンタックスハイライトの有効化
syntax enable


"""""""""""""""
" 表示
"""""""""""""""
" 行番号
set number
" 入力中のコマンド
set showcmd
" 括弧入力時の対応する括弧
set showmatch
" ステータスライン
set laststatus=2


"""""""""""""""
" 入力
"""""""""""""""
" 折り返し時に表示行単位での移動
nnoremap j gj
nnoremap k gk
" カーソルを行頭、行末で止まらないように
set whichwrap=b,s,h,l,<,>,[,]
" コマンドモードでtabを押すと補完
set wildmenu

" 改行時に前の行のインデントを継続
set autoindent
" 改行時に入力された行の末尾に合わせて
set smartindent
" tabキーで半角スペースを挿入
set expandtab
" tabを2文字分に指定
set tabstop=2
" インデントの見た目の空白数の設定(0でtabstopの値を使う)
set shiftwidth=0


"""""""""""""""
" 検索
"""""""""""""""
" 大小区別しない
set ignorecase
" 大文字が含まれてたら区別する
set smartcase
" 入力した時点で開始
set incsearch
" 最後まで行ったら最初に戻る
set wrapscan
" 対象をハイライト
set hlsearch
" ESC*2でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
