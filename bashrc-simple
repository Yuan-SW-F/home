# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
DATE=`date +%Y-%m-%d`
if [ $TERM="xterm-256color" ]
then
    eval `dircolors ~/.dir_colors`
    PS1="\[\e[1;35m\][\[\e[1;33m\]\u@Yuan-SW-F $DATE \A \[\e[1;36m\]\w\[\e[1;35m\]]\[\e[1;31m\]\n\$ \[\e[0m\]"
    #PS1='\[\e[1;35m\][\[\e[1;33m\]\u@\h \A \[\e[1;36m\]\w\[\e[1;35m\]]\[\e[1;31m\]\n\$ \[\e[0m\]'
else
    LS_OPTIONS='--color'
    export LS_COLORS
fi
export LS_OPTIONS

### PIP path ###
Ypip=/Yuan/Ypip2.0
export PATH=$Ypip/Ybin/bin:$PATH
export PATH=$Ypip/Syntenic:$PATH
export PATH=/Yuan/app/miniconda2/bin:$PATH
export PATH=/Yuan/app/miniconda3/bin:$PATH
export PATH=/Yuan/soft/ghostscript-9.53.3/bin:$PATH
export PERL5LIB=$Ypip/Ybin/lib:$PERL5LIB


#####bio sorftware #####
export PATH=/Yuan/cbin:$PATH
export PATH=/Yuan/sbin:$PATH
export PATH=/Yuan/app/last-1145/bin:$PATH
export PATH=/Yuan/soft/MCScanX:$PATH
export PATH=/Yuan/soft/ncbi-blast-2.9.0/bin:$PATH
export PATH=/Yuan/app/multiz-tba.012109/bin:$PATH
#在PATH中找到可执行文件程序的路径。
#gcc找到头文件的路径#C_INCLUDE_PATH
#g++找到头文件的路径#CPLUS_INCLUDE_PATH
#找到动态链接库的路径#LD_LIBRARY_PATH
#找到静态库的路径#LIBRARY_PATH
#MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man
#INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info
export MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH.
export INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH.
export PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH
#to your PATH for current and future sessions.

###   alias   ###
alias vb="vim ~/.bashrc"
alias sb='source ~/.bashrc'
alias wl='wc -l'
alias l='ls -l -h'
alias ll='ls -l'
