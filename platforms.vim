"=============================================================================
" 作者: 何杰 (@hejie)
" Description: The Vim Configuration
" Version: 1.0
" =============================================================================
silent function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction

silent function! NVIM()
    return has('nvim')
endfunction

silent function! ONI()
    return exists('g:gui_oni')
endfunction

function! EverVimBundleDir(bundlename)
    return $HOME . "/vim/bundle/" . a:bundlename
endfunction

if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar

  " Set height and width on Windows
  set lines=60
  set columns=120

  " Disable quickfixsigns on Windows due to incredible slowdown.
  let g:loaded_quickfixsigns=1

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim

  " Custom Source Code font for Powerline
  " From: https://github.com/Lokaltog/powerline-fonts
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12

  " Hide Toolbar in MacVim
  if has('gui_running')
    set guioptions=egmrt
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

if !has('nvim') && (has('macunix') || has('mac'))
  " Fix meta key for Mac
  let c='a'
  while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
  endw
endif
