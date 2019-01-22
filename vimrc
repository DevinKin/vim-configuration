"====================== vim-plug配置======================
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/ludovicchabant/vim-gutentags.git'
Plug 'skywind3000/asyncrun.vim'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
call plug#end()
"====================== vim-plug配置======================



"====================== ctags配置======================
set tags=./.tags;,.tags
"====================== ctags配置======================


"====================== gutentags配置======================
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
 
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
 
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
 
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"====================== gutentags配置======================


"====================== AsyncRun配置======================
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
 
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
 
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
"====================== AsyncRun配置======================



"====================== ale配置======================
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
 
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta
"====================== ale配置======================




"====================== cpp-enhanced-highlight配置======================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
"====================== cpp-enhanced-highlight配置======================



"====================== ycmd配置======================
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone
 
noremap <c-z> <NOP>
 
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
"====================== ycmd配置======================



"====================== better default======================
set nu
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
"====================== better default======================


"====================== auto-pairs ======================
"====================== auto-pairs ======================


