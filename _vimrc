""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " ファイルオープンを便利に
 NeoBundle 'Shougo/unite.vim'
 " Unite.vimで最近使ったファイルを表示できるようにする
 NeoBundle 'Shougo/neomru.vim'
 " ファイルをtree表示してくれる
 NeoBundle 'scrooloose/nerdtree'
 " Ruby向けにendを自動挿入してくれる
 NeoBundle 'tpope/vim-endwise'
 """""""""""""""""""
 " Unit.vimの設定
 """""""""""""""""""
 " 入力モードで開始する
 let g:unite_enable_start_insert=1
 " " バッファ一覧
 noremap <C-P> :Unite buffer<CR>
 " " ファイル一覧
 noremap <C-N> :Unite -buffer-name=file file<CR>
 " 最近使ったファイルの一覧
 noremap <C-Z> :Unite file_mru<CR>
 " sourcesを「今開いているファイルのディレクトリ」とする
 noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
 " ウィンドウを分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
 unite#do_action('split')
 au FileType unite inoremap <silent> <buffer> <expr> <C-J>
 unite#do_action('split')
 " ウィンドウを縦に分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
 unite#do_action('vsplit')
 au FileType unite inoremap <silent> <buffer> <expr> <C-K>
 unite#do_action('vsplit')
 " ESCキーを2回押すと終了する
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR> 
 """"""""""""""""""""""""""
 call neobundle#end()
 """""""""""""""""""""""""
 " 各種オプションの設定
 """""""""""""""""""""""""
 " ルーラーの表示
 set ruler
 " ウィンドウのタイトルバーにファイル情報を表示
 set title
 " コマンドライン上でTabによる補完を有効化
 set wildmenu
 " 検索ワードの最初の文字を入力した時点で検索を開始する
 set incsearch
 " 行番号を表示する
 set number
 " インデント幅の指定
 set shiftwidth=2
 " 行頭の余白部分でTabを入力すると'shiftwidth'の数だけインデントする
 set smarttab
 " カラースキーマの指定
 colorscheme desert
 " 行番号の色
 highlight LineNr ctermfg=darkyellow
 """"""""""""""""""""""
 
 

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
