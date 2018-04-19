if isdirectory(expand(EverVimBundleDir('clang_complete')))
    let g:deoplete#sources#clang#libclang_path = ""
    if LINUX()
        let g:clang_library_path='/usr/lib/'
    elseif OSX()
        let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
    endif
endif
