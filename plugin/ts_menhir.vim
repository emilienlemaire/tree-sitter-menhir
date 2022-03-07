let s:source_file = expand("<sfile>")

for file in glob(fnamemodify(s:source_file, ":h:h") . "queries/menhir/*", v:false, v:true)
    call v:lua.vim.treesitter.set_query("menhir", fnamemodify(file, ":t:r"), join(readfile(file), "\n"))
endfor
