syntax on  
set cindent  
set nu  
set tabstop=4  
set shiftwidth=4  
set background=dark
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
	elseif &filetype == 'python'
		exec "!python %"
    elseif &filetype == 'sh'
        :!%
    endif
endfunc
