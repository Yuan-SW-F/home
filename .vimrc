set nocp
set ts=4
set si
set shiftwidth=4
set autoindent
"set expandtab
colorscheme desert
" ron murphy torte desert elflord
" blue darkblue default delek desert elflord evening industry koehler morning
" murphy pablo

if version >= 603
set helplang=on
set encoding=utf-8
endif

autocmd BufNewFile *.pl,*.sh,*.R,*.py,*.java,*.c,*cpp exec ":call SetTitle()"

func SetTitle()
if &filetype == 'sh'
call setline(1,"\#!/bin/bash")
call append(line("."),"\# File Name: ".expand("%"))
call append(line(".")+1,"\# Author  : ".system("whoami|tr -d '\n'").", 907569282@qq.com")
call append(line(".")+2,"\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
call append(line(".")+3,"source ~/.bashrc")
call append(line(".")+4,"")
elseif &filetype == "perl"
call setline(1,"\#!/usr/bin/perl -w")
call append(line("."),"\=head1 Info")
call append(line(".")+1, "    Script Author  : ".system("whoami|tr -d '\n'").", Yuan-SW-F, yuanswf@163.com")
call append(line(".")+2, "    Created Time   : ".strftime("%F %H:%M:%S"))
call append(line(".")+3, "    Example: ".expand("%"))
call append(line(".")+4, "\=cut")
call append(line(".")+5, "use strict;")
call append(line(".")+6,"use feature qw(say);")
call append(line(".")+7, "use Getopt::Long;")
call append(line(".")+8,"my (\$help);")
call append(line(".")+9,"GetOptions(")
call append(line(".")+10,"  \"help\!\"\=\>\\\&USAGE,\)")
call append(line(".")+11,"or USAGE();")
call append(line(".")+12,"")
call append(line(".")+13,"\######################### Sub Routines #########################")
call append(line(".")+14,"sub USAGE{")
call append(line(".")+15,"my \$uhead=\`pod2text \$0\`;")
call append(line(".")+16,"my \$usage=<<\"USAGE\";")
call append(line(".")+17,"USAGE:")
call append(line(".")+18,"\tperl \$0")
call append(line(".")+19,"\t--help\toutput help information to screen")
call append(line(".")+20,"USAGE")
call append(line(".")+21,"print \$uhead.\$usage;")
call append(line(".")+22,"exit;}")
elseif &filetype == "python"

call setline(1,"\#!/usr/bin/env python")
"/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/anaconda2/bin/python")
call append(line("."),"\# -*- coding: UTF-8 -*-")
call append(line(".")+1, "\# Author: ".system("whoami|tr -d '\n'")." (Yuan-SW-F, yuanswf@163.com)")
call append(line(".")+2, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
call append(line(".")+3, "\# Example ".expand("%")."   ")
call append(line(".")+4, "import sys, os, re")
call append(line(".")+5, "")
elseif &filetype == "java"
call setline(1,"\###")
call append(line("."),"\# File Name: ".expand("%:p"))
call append(line(".")+1, "\# Author: ".system("whoami|tr -d '\n'").", Yuan-SW-F, yuanswf@163.com")
call append(line(".")+2, "\# Created Time: ".strftime("%c"))
call append(line(".")+3,"")
elseif &filetype == "c" || &filetype == "cpp"
call setline(1,"\#include<stdio.h>")
call append(line("."),"")
call append(line(".")+1,"int main()")
call append(line(".")+2,"{")
call append(line(".")+3,"")
call append(line(".")+4,"")
call append(line(".")+5,"}")
else
call setline(1,"\#!/usr/bin/env Rscript")
call append(line("."),"\# File Name: ".expand("%:p"))
call append(line(".")+1, "\# Author: ".system("whoami|tr -d '\n'").", Yuan-SW-F, yuanswf@163.com")
call append(line(".")+2, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
call append(line(".")+3,"")
endif

autocmd BufNewFile * normal "G"
endfunc
