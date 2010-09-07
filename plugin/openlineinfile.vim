" Usage:
"
" :E foo/bar/baz.ext:123
"
" opens file foo/bar/baz.ext at line 123

function! OpenLineInFile(file)
  let l:split = split(a:file, ':', 1)
  exec "edit +" . get(l:split, 1) . " " . l:split[0]
endfunction

" E command
command! -nargs=1 E call OpenLineInFile('<args>')
