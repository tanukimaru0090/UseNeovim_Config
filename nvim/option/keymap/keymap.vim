
" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

"キーマップ

nnoremap <leader>r     : QuickRun clang<CR>
nnoremap <silent><C-r> : QuickRun rust<CR>
nnoremap <silent><C-z> : tabprev<CR>
nnoremap <silent><C-x> : tabnext<CR>
nnoremap <silent><C-a> : prev<CR>
nnoremap <silent><C-s> : n<CR>


nnoremap <silent><C-e> : NERDTreeTabsToggle<CR>
nnoremap <silent><C-f> : Vista!!<CR>
nnoremap <silent><C-f> : Vista!!<CR>
"Coc-Settings
nnoremap <silent><C-Space> : call CocAction('doHover')<CR>
"------------
tnoremap <Esc> : <C-\><C-n><CR>
autocmd FileType cpp setlocal omnifunc=lsp#complete



command Runcpb   QuickRun  cpp/gcc

command Runclb   QuickRun cpp/clang 

command Runminb  QuickRun cpp/mingw32 

command Runq    QuickRun 

command Runrs    QuickRun QuickRun rs/rust

command Runlua   QuickRun lua

command Runmono  QuickRun dotnet run

command Newnet   QuickRun dotnet new console





