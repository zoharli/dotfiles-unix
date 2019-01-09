"------------vUNDLE- SETTING-------------------
set nocompatible              " be iMproved, required
so $HOME/.vim/plugins.vim
"--------------------general setting---------------------
mapclear
set timeoutlen=300
syntax enable
set nobackup
set mouse=a
set number
set hidden
set t_Co=256
color gloom
set guioptions-=e
set guioptions-=m
set guioptions-=g
set guioptions-=l
set guioptions-=r
set guioptions-=b
set splitbelow
set splitright
"------------different system setting----------------"
if has('mac')
elseif has('unix')
endif
"------------grammar setting-----------------"
set autoindent
set cindent
set ts=4
set softtabstop=4
set shiftwidth=4
let mapleader="\<Space>"
set backspace=indent,eol,start
"----------------syntastic setting-----------------
nnoremap <leader>k  :SyntasticReset<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list =1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_mode_map = { "mode": "passive","active_filetypes":["cpp","c"] }
let g:syntastic_cpp_compiler = 'g++'  
let g:syntastic_cpp_compiler_options ='-std=c++11 -stdlib=libc++'
"------------search setting------------------
set hlsearch
set incsearch
nnoremap <space><space> :nohlsearch<cr>
"------------ctags setting------------------
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
nnoremap <leader>mt :!ctags -R --fields=+iaS --extra=+q --c-types=+l --c++-types=+l --java-types=+l --python-types=+i *<cr> 
nnoremap ‘ <C-]>
nnoremap “ <C-t>
"------------ctrlP setting------------------
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>m :CtrlPMRU<cr>
let g:ctrlp_show_hidden=1
"------------configuration------------------"
nnoremap q b
nnoremap b q
nnoremap Q B
nnoremap B Q
inoremap {<cr> {<cr>}<esc>O
nnoremap ; :
nnoremap : ;
inoremap ≈ <Del>
nnoremap ≈ <Del>
set noshowmatch
set whichwrap=b,s,<,>,[,]
nnoremap <silent> p p`]
vnoremap <silent> y y`]
vnoremap <silent> p p`]
noremap < <<<esc>
noremap > >><esc>
inoremap ø <Esc>o
inoremap Ø <Esc>O
nnoremap œ :tabn<cr>
nnoremap ® <C-R>
nnoremap <leader>f :f<cr>
nnoremap <C-a> ^
nnoremap <C-e> $
inoremap <C-a> <Esc>^i
inoremap <C-e> <Esc>$a
noremap ∑ <C-u>
noremap ß <C-d>
inoremap ∑ <PageUp>
inoremap ß <esc>zzi
inoremap ˚ <Up>
inoremap ∆ <Down>
inoremap ˙ <Left>
inoremap ¬ <Right>
vnoremap ¥ "+y
nnoremap Á ggVG"+y
nnoremap dq db
nnoremap de dw
nnoremap dw  diwx
nnoremap <C-W> <C-W><C-W>
inoremap <C-W> <C-[>diwxi
nnoremap ™ ddkP
nnoremap £ ddp
set noerrorbells visualbell t_vb=
set complete=.
set autowriteall 
set autowrite
"-------------NerdTree Setting------------"
noremap ¡ :NERDTreeToggle<cr>
"let NERDTreeHijackNetrw=0
"---------------ag setting-----------------
nnoremap <leader>g :Ag<space>
let g:ag_highlight=1
let g:ag_prg="ag --vimgrep --smart-case --ignore tags"
"-------------greplace Setting-------------
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
nnoremap <leader>s :Gsearch<cr>
"-------------snipmate Setting-------------
nnoremap ,gl :tabe $HOME/.vim/colors/gloom.vim<cr>
nnoremap ,pl :tabe $HOME/.vim/plugins.vim<cr>
nnoremap ,v :tabe $MYVIMRC<cr>
nnoremap ,cpp :tabe $HOME/.vim/bundle/vim-snippets/snippets/cpp.snippets<cr>
nnoremap ,vim :tabe $HOME/.vim/bundle/vim-snippets/snippets/vim.snippets<cr>
nnoremap ,cc :tabe $HOME/.vim/bundle/vim-snippets/snippets/c.snippets<cr>
nnoremap ,py :tabe $HOME/.vim/bundle/vim-snippets/snippets/python.snippets<cr>
"--------------------one-key compile&run---------------------
func! CompileGcc()
	exec "w"
	let  compilecmd = "!gcc "
	let compileflag = "-o %< "
	if search("mpi\.h") != 0
		let compilecmd = "!mpicc "
	endif
	if search("glut\.h") != 0
		let compileflag . = " -lglut -lGLU -lGL "
	endif
	if search("cv\.h") != 0
		let compileflag . = " -lcv -lhighgui -lcvaux "
	endif
	if search("omp\.h") != 0
		let compileflag . = " -fopenmp "
	endif
	if search("math\.h") != 0
		let compileflag . = " -lm "
	endif
	exec compilecmd." % ".compileflag
endfunc

func! CompileRunGpp()
	if &filetype == "cpp"
		exec "w"
		exec "!echo % && g++ -std=c++11 -o %< % && ./%< && rm %<"
	endif
endfunc

func! CompileGpp()
	exec "w"
	let compilecmd = "!g++ -std=c++11"
	let compileflag = "-o %< "
	if search("mpi\.h") != 0
		let compilecmd = "!mpic++ "
	endif
	if search("glut\.h") != 0
		let compileflag . = " -lglut -lGLU -lGL "
	endif
	if search("cv\.h") != 0
		let compileflag . = " -lcv -lhighgui -lcvaux "
	endif
	if search("omp\.h") != 0
		let compileflag . = " -fopenmp "
	endif
	if search("cmath") != 0
		let compileflag . = " -lm "
	endif
	exec compilecmd." % ".compileflag
endfunc

func! RunPython()
	exec "!python3 %"
endfunc
func! CompileJava()
	exec "!javac %"
endfunc


func! CompileCode()
	exec "w"
	if &filetype == "cpp"
		exec "call CompileGpp()"
	elseif &filetype == "c"
		exec "call CompileGcc()"
	elseif &filetype == "python"
		exec "call RunPython()"
	elseif &filetype == "java"
		exec "call CompileJava()"
	endif
endfunc

func! CompileRunResult()
	exec "w"
	if search("mpi\.h") != 0
		exec "!mpirun -np 4 ./%<"
	elseif &filetype == "cpp"
		exec "call CompileRunGpp()"
	elseif &filetype == "c"
		exec "! ./%<"
	elseif &filetype == "python"
		exec "call RunPython"
	elseif &filetype == "java"
		exec "!java %<"
	endif
endfunc

noremap ∞ :call CompileCode()<CR>
inoremap ¢ <ESC>:call CompileRunResult()<CR>
noremap ¢ :call CompileRunResult()<CR>


augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"-----------------------acm----------------------
nnoremap <leader>i :!pbpaste > in.txt<cr><cr>
nnoremap <leader>vi :!cat in.txt<cr>
nnoremap <leader>ei :!touch in.txt && open -e in.txt<cr><cr>
nnoremap <leader>op :!open $HOME/Documents/algorithm/operators.jpg<cr><cr>
