if has('vim_starting')
let g:airline_theme='violet'
set guioptions-=m
augroup vimrc-auto-cursorline
  autocmd!
  autocmd CursorMoved,CursorMovedI * call s:auto_cursorline('CursorMoved')
  autocmd CursorHold,CursorHoldI * call s:auto_cursorline('CursorHold')
  autocmd WinEnter * call s:auto_cursorline('WinEnter')
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event)
    if a:event ==# 'WinEnter'
      setlocal cursorline
      let s:cursorline_lock = 2
    elseif a:event ==# 'WinLeave'
      setlocal nocursorline
    elseif a:event ==# 'CursorMoved'
      if s:cursorline_lock
        if 1 < s:cursorline_lock
          let s:cursorline_lock = 1
        else
          setlocal nocursorline
          let s:cursorline_lock = 0
        endif
      endif
    elseif a:event ==# 'CursorHold'
      setlocal cursorline
      let s:cursorline_lock = 1
    endif
  endfunction
augroup END


hi Pmenu ctermbg=8 ctermfg=0
hi PmenuSel ctermbg=13 ctermfg=0  
packadd termdebug
set mouse=a
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1
scriptencoding=utf-8
set wildmenu 
set history=5000
set lazyredraw
set ttyfast
set number

"----airline----

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
 
  " フォルダアイコンを表示
  let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
  let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
  " after a re-source, fix syntax matching issues (concealing brackets):
  if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
  endif
"---------------

"---filetree----
let g:nerdtree_tabs_open_on_console_startup = 1
set matchpairs& matchpairs+=<:>
let g:jedi#completions_enabled = 1
endif
