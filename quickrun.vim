

augroup cpp-path
    autocmd!
    autocmd FileType cpp setlocal path=.,/usr/include,/usr/local/include,/usr/lib/gcc/x86_64-linux-gnu/8/include/
augroup END

let g:quickrun_config = get(g:,'quickrun_config',{})
let g:quickrun_config._ = {
     \     'runner/vimproc/updatetime'    : 60,
     \     'outputter/error/error'        : 'quickfix',
     \     'outputter/error/success'      : 'buffer',
     \     'outputter/buffer/split'       : ':botright',
     \     'outputter/quickfix/open_cmd'  :'copen',
     \     'outputter'                    : 'error',
     \     'runner'                       : 'vimproc', 
     \     'hook/time/enable'             : 1
     \}
set splitbelow
let g:quickrun_config.cpp = {
            \ 'command'   : 'clang++',
            \ 'cmdopt'    : '-std=c++1y -Wall -Wextra -o mbin',
	    \ 'runner'    : 'vimproc'
            \ }

let g:quickrun_config['cpp/clang'] = {
            \ 'command'   : 'clang++',
            \ 'cmdopt'    : '-std=c++1y -Wall -Wextra -o mbin ',
            \ }
let g:quickrun_config['cpp/mingw32'] = {
            \ 'command'   : 'i686-w64-mingw32-g++',
            \ 'cmdopt'    : '-std=c++11 -o mbin'
	    \ }
	    
let g:quickrun_config.rust = {
\   'rs/rust': {
\       'exec': ['%c %o %s', '%s:p:r %a'],
\       'tempfile': 'tmp.rs',
\       'hook/sweep/files': ['%S:p:r', '%S:p:r.pdb', '%S:p:r.exe', 'tmp.pdb' ,'tmp.exe'],
\   },
\ }



