# Vim回归-C/C++环境搭建

## 插件管理——vim-plug

### vim-plug的安装

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### vim-plug的使用

- 在`~/.vimrc`中添加如下内容进行测试

```
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()
```

- 检查插件`:PlugStatus`
- 安装插件`:PlugInstall`
- 更新插件`:PlugUPdate`
- 审查插件`:PlugDiff`
- 清理插件`:PlugClean`
- 升级Vim-plug`:PlugUpgrade`

## 符号索引

### 安装Universal-ctags

- 安装命令如下

  ```sh
  sudo apt-get install autoconf
  git clone https://github.com/universal-ctags/ctags.git
  cd ctags
  ./autogen.sh
  ./configure --prefix=/where/you/want # defaults to /usr/local
  make
  sudo make install # may require extra privileges depending on where to install
  ```

- ctags的使用参考：https://blog.csdn.net/duotemplar/article/details/79684558

### ctags在vim中的配置

```
set tags=./.tags;,.tags
```

## 自动索引

### 安装vim-gutentags

- 在`~/.vimrc`中添加

```
call plug#begin('~/.vim/plugged')                  
Plug 'itchyny/lightline.vim' 
Plug 'https://github.com/ludovicchabant/vim-gutentags.git'
call plug#end()
```

## 编译运行

```
Plug 'skywind3000/asyncrun.vim'

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
 
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
 
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
```

## 动态检查

```
Plug 'https://github.com/w0rp/ale.git'
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
```

## 代码高亮

```
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
```

## 代码补全

```
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
```

## 参考文章

- http://www.skywind.me/blog/archives/2084
- https://www.jianshu.com/p/d908ce81017a?nomobile=yes