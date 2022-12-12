
call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/cohama/lexima.vim',{'on':[]}
"Indent---
Plug 'Yggdroot/indentLine',{'on':[]}
Plug 'nathanaelkane/vim-indent-guides',{'on':[]}
"---------
Plug 'nelstrom/vim-visual-star-search',{'on':[]}
Plug 'ryanoasis/vim-devicons'
Plug 'prabirshrestha/async.vim',{'on':[]}

Plug 'nosami/Omnisharp'

"StatusLineStyle---
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

"------------------
Plug 'Shougo/unite.vim'


"--File Tree---
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'


"--------------

Plug 'w0rp/ale',
"コード補完

Plug 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln'
\   }
\ }



Plug 'tyru/caw.vim'

Plug 'rust-lang/rust.vim',   {'on':[]}

Plug 'marcus/rsense',   {'on':[]}

Plug 'thinca/vim-quickrun'

Plug 'neoclide/coc.nvim',{'branch': 'release','on':[]}
Plug 'Shougo/vimproc.vim'

Plug 'junegunn/rainbow_parentheses.vim'

Plug 'liuchengxu/vista.vim'

Plug 'cohama/lexima.vim'

Plug 'puremourning/vimspector'

call plug#end()


function! s:load_plug(timer)
    call plug#load(
	\ 'coc.nvim',
	\ 'rust.vim',
	\ 'rsense',
        \'lexima.vim',
        \'indentLine',
        \'vim-indent-guides',
        \'vim-visual-star-search',
	\'async.vim'
	\)
endfunction

call timer_start(650,function('s:load_plug'))



