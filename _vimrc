"---------------------------
"start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" このあたりに追加のプラグインを書く！"
 
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'open-browser.vim'
NeoBundle 'mattn/webapi-vim'
"NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
"NeoBundle 'taichouchou2/vim-javascript'
"NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/syntastic.git'


call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
"start emmet-vim
"-------------------------
 let g:user_emmet_mode = 'iv'
 let g:user_emmet_leader_key = '<C-Y>'
 let g:use_emmet_complete_tag = 1
 let g:user_emmet_settings = {
			 \ 'lang' : 'ja',
			 \ 'html' : {
			 \ 'filters' : 'html',
			 \ },
			 \ 'css' : {
			 \ 'filters' : 'fc',
			 \ },
			 \ 'php' : {
			 \ 'extends' : 'html',
			 \ 'filters' : 'html',
			 \ },
			 \}
 augroup EmmitVim
	 autocmd!
	 autocmd FileType * let g:user_emmet_settings.indentation = ' '[:&tabstop]
 augroup END

"-------------------------
" End emmet-vim setting
"-------------------------


"-------------------------
"start open-browser.vim
"-------------------------

" カーソル下のURLをブラウザで開く
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる"
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

"-------------------------
" End open-browser.vim
"-------------------------

"-------------------------
" start html5.vim
"-------------------------

" HTML 5 tags
" syn keyword htmlTagName contained article aside audio bb canvas command
" syn keyword htmlTagName contained datalist details dialog embed figure
" syn keyword htmlTagName contained header hgroup keygen mark meter nav output
" syn keyword htmlTagName contained progress time ruby rt rp section time
" syn keyword htmlTagName contained source figcaption
" syn keyword htmlArg contained autofocus autocomplete placeholder min max
" syn keyword htmlArg contained contenteditable contextmenu draggable hidden
" syn keyword htmlArg contained itemprop list sandbox subject spellcheck
" syn keyword htmlArg contained novalidate seamless pattern formtarget
" syn keyword htmlArg contained formaction formenctype formmethod
" syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
" syn keyword htmlArg contained hidden role
" syn match htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
" syn match htmlArg contained "\s*data-[-a-zA-Z1-9_]\+"

"-------------------------
" End html5.vim
"-------------------------

"-------------------------
"set List
"-------------------------
syntax on
set nohlsearch
set cursorline "編集部分の下線
set incsearch 
set backspace=indent,eol,start "backspaceが使える
set autoindent "自動インデント
set ruler "ルーラー表示

"---------------------------
" keymap
"--------------------------
"<p>で囲う \p
nm <leader>p v$h<S-s><p>
nnoremap Y y$

"---------------------------
" vim Commond List
"---------------------------
"
"plugin 管理
"plugin update
"	:NeoBundleInstall
"plugin delete
"	:NeoBundleClean
"
"
"NERDTreeコマンド
"ノーマルモードで /NERDTree でMacのfinder風UIでファイル探せる
"
"emmet-vimコマンド
" http://motw.mods.jp/Vim/emmet-vim.html
"div>ul などを入力後　C-Y , でタグ展開
"
"surrond-vimコマンド
" http://vimblog.hatenablog.com/entry/vim_plugin_surround_vim
"
"open-browser.vimコマンド
" 読み込みたいURLの行にカーソルを合わせて\o
" ぐぐる時は\g
"
"
"vim コマンド
"オールオートインデント
"gg = G
"


















