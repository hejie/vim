"=============================================================================
" 作者: 何杰 (@hejie)
" Description: The Vim Configuration
" Version: 1.0
" =============================================================================

set nocompatible " be iMproved
filetype off     " required!  　

set runtimepath+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" 引用插件
let g:vundle_installing_plugins = 1
for file in split(glob('$HOME/.vim/plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob('$HOME/.vim/plugins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vundle_installing_plugins

call vundle#end()

filetype plugin indent on
