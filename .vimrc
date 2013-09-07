
set nocompatible               " be iMproved
filetype off


if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

set enc=utf-8

set number
set tabstop=4
set autoindent

set title
set ruler
set showcmd
set showmatch
set laststatus=2

" 辞書ファイルの読み込み
autocmd FileType php,ctp,tpl :set dictionary=~/.vim/dict/php.dict
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

syntax on
colorscheme peachpuff

" 前回編集していた場所にカーソルを移動させる
" http://d.hatena.ne.jp/lurker/20060508/1147091810
au BufWritePost * mkview
autocmd BufReadPost * loadview""

" トラックパッドを有効にする
set mouse=a

" 対応する括弧を補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap {" "zdi{"<C-R>z"}<ESC>
vnoremap {' "zdi{'<C-R>z'}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap [" "zdi["<C-R>z"]<ESC>
vnoremap [' "zdi['<C-R>z']<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap (" "zdi("<C-R>z")<ESC>
vnoremap (' "zdi('<C-R>z')<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>'"

" 日本語ヘルプ
" http://qiita.com/items/5e83f918a141b665cbba
NeoBundle 'vim-jp/vimdoc-ja'
" vimdoc-ja
helptags ~/.vim/bundle/vimdoc-ja/doc

" ディレクトリを開いたファイルと同じ場所へ移動する
" http://d.hatena.ne.jp/homaju/20130131/1359614451
" "au BufEnter * execute 'lcd ' fnameescape(expand('%:p:h'))
