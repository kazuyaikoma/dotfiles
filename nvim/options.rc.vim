" ステータスラインのための調整
set laststatus=2
set noshowmode

" swap fileは生成しない
set noswapfile

" 検索系
set smartcase
set wrapscan
set incsearch
set inccommand=split

" 補完用のプレビューの表示をさせない
set completeopt-=preview

" tab, indent関連
set tabstop=2
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=0
set showmatch

" backspaceの管理
set backspace=indent,eol,start

" デザイン面の設定
set number
set cursorline

" クリップボード
set clipboard&
set clipboard^=unnamedplus

" 背景をターミナルと同じにする
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

" カーソルがある行の数字の背景と文字色を設定
autocmd ColorScheme * highlight CursorLineNr ctermbg=234 ctermfg=223
autocmd ColorScheme * highlight CursorLine ctermbg=237 ctermfg=NONE

" pencil, dogrun共通カラースキーム
set t_Co=256

" dogrunカラースキーム
colorscheme dogrun
let g:lightline = { 'colorscheme': 'dogrun', }

" 通常の行の数字と背景色の設定
hi LineNr ctermbg=234 ctermfg=8

" insermodeを抜けると末尾の空白を消す
autocmd InsertLeave * :%s/\s\+$//e

" htmlの閉じタグ補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" Lisper
let lisp_rainbow=1

" 不要なデフォルトの設定
let g:loaded_2html_plugin      = 1
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
let g:loaded_matchparen        = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1

"インデントのプラグインの設定
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

" setting indent_guides_color
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" rg for ctrlp
" OPTIMIZE: 現在はおそらくfish周りでエラーが起きてるがfzfに移行したい
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
