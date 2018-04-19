"=============================================================================
" 作者: 何杰 (@hejie)
" Description: The Vim Configuration
" Version: 1.0
" =============================================================================

set nocompatible " be iMproved
filetype off     " required!  　

call plug#begin('$HOME/vim/bundle')

" 引用插件
let g:vundle_installing_plugins = 1
for file in split(glob('$HOME/vim/plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob('$HOME/vim/plugins/cpp/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob('$HOME/vim/plugins/theme/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vundle_installing_plugins

function! VimInitPlugins()
    if !isdirectory(expand('$HOME/vim/bundle'))
        execute 'PlugInstall'
    endif
endfunction

autocmd VimEnter * call VimInitPlugins()

call plug#end()
