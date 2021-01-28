# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
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
Ypip=/Yuan #your work path
Ypip2=$Yuan/Ypip2.0
export PATH=$Ypip2/Ybin/bin:$PATH
export PATH=$Ypip2/Syntenic:$PATH
export PATH=$Ypip/app/miniconda2/bin:$PATH
export PATH=$Ypip/app/miniconda3/bin:$PATH
export PATH=$Ypip/soft/ghostscript-9.53.3/bin:$PATH
export PERL5LIB=$Ypip2/Ybin/lib:$PERL5LIB


#####bio sorftware #####
export PATH=$Ypip/cbin:$PATH
export PATH=$Ypip/sbin:$PATH
export PATH=$Ypip/app/last-1145/bin:$PATH
export PATH=$Ypip/soft/MCScanX:$PATH
export PATH=$Ypip/soft/ncbi-blast-2.9.0/bin:$PATH
export PATH=$Ypip/app/multiz-tba.012109/bin:$PATH
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
