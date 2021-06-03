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
abyss=/abyss # your work path, or you can link your path to /abyss; `cd /; mkdir abyss; ln -s your_path /abyss`
alias mkab = "cd $abyss; mkdir app bin db git soft; git clone https://github.com/Yuan-SW-F/Ybin.git"
export PATH=$abyss/bin:$PATH
export PATH=$abyss/bin/UCSC:$PATH
export PATH=$abyss/app/miniconda2/bin:$PATH
export PATH=$abyss/app/miniconda3/bin:$PATH
export PATH=$abyss/soft/ghostscript-9.53.3/bin:$PATH
export PATH=$abyss/Ybin/bin:$PATH
export PATH=$abyss/abyssTools:$PATH
export PERL5LIB=$abyss/Ybin/lib:$PERL5LIB


#####bio sorftware #####
export PATH=$abyss/cbin:$PATH
export PATH=$abyss/sbin:$PATH
export PATH=$abyss/app/last-1145/bin:$PATH
export PATH=$abyss/soft/MCScanX:$PATH
export PATH=$abyss/soft/ncbi-blast-2.9.0/bin:$PATH
export PATH=$abyss/app/multiz-tba.012109/bin:$PATH
export PATH=$abyss/app/meme-5.3.1/bin:$PATH
export PATH=$abyss/app/curl-7.47.1/bin:$PATH
export PATH=$abyss/app/R-3.5.3/bin:$PATH
export PATH=$abyss/soft/gatk-4.1.9.0:$PATH
export PATH=$abyss/app/callCBs/multiz-tba.012109/bin:$PATH
export PATH=$abyss/app/callCBs:$PATH
export PATH=$abyss/app/cd-hit-v4.6.7-2017-0501:$PATH
export PATH=$abyss/git/svtyper:$PATH
export PATH=$abyss/git/PopLDdecay/bin:$PATH

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
alias v='vim'
alias vi='vim'
alias vb="vim ~/.bashrc"
alias sb='source ~/.bashrc'
alias cb='cp ~/.bashrc /chenlab/abyss' # root 权限使用，勿动
alias syb='cp /chenlab/abyss/.bashrc ~/.bashrc' # 用户同步root系统配置
alias wl='wc -l'
alias l='ls -l -h'
alias ll='ls -l'
alias vcmd='vi ~/shell.sh'
alias cmd='cat ~/shell.sh'
alias p2='export PATH=$Ypip/app/miniconda2/bin:$PATH'
alias exp='echo "export PATH=$PWD:\$PATH"'

