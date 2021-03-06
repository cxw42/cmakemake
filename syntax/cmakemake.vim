" Vim syntax file
" Language:           make(1) output from Makefiles generated by CMake
" Maintainer:         Chris White <cxwembedded@gmail.com>
" Version:            0.1
" Project Repository: https://github.com/cxw42/vim-cmakemake
" License:            MIT
"
" Thanks to http://vim.wikia.com/wiki/Creating_your_own_syntax_files for
" guidance.

if version < 600
	finish
elseif exists("b:current_syntax")
	finish
endif

syn case ignore

" flags
syn keyword cmmFlag warning error

" make(1) report lines
syn match makeReportLine '^[^[:space:]]*\<make\>.*$'

" cmake percentage lines
syn match percentageLine '\v^\[\s*\d+\%\]\s.*$'

hi def link     cmmFlag         WarningMsg
hi def link     makeReportLine  PreProc
hi def link     percentageLine  Comment

let b:current_syntax = "cmakemake"

" vi: set ts=4 sts=4 sw=4 et ai: "
