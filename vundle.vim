"=============================================================================
" 作者: 何杰 (@hejie)
" Description: The Vim Configuration
" Version: 1.0
" =============================================================================

set nocompatible " be iMproved
filetype off     " required!  　

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if exists('g:vundle_installing_plugins')
  Plugin 'VundleVim/Vundle.vim'
  finish
endif

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

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
