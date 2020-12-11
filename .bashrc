# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

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

export PATH=/public/software/bin:$PATH

export PATH=/public/software/gcc-6.4.0/bin:$PATH
### my home ###
PIP=/path-to/pip-yuan
export PATH=~/bin:$PIP/usr:$PIP/usr/bin:$PIP/bin:$PIP/bin/UCSC:$PATH
#export PATH=$PIP/app/anaconda2/bin:$PATH
export PATH=$PIP/app/perl-5.14.2/bin:$PATH

### Library ###
export LD_LIBRARY_PATH=software/gcc-6.4.0/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/urs/lib:/urs/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PIP/lib:$PIP/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PIP/urs/lib:$PIP/urs/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/yuan/usr/lib64/mysql:$LD_LIBRARY_PATH

export C_INCLUDE_PATH=$PIP/usr/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/usr/include:$C_INCLUDE_PATH
export PERL5LIB=$PIP/lib:$PERL5LIB
#export PERL5LIB=$PERL5LIB:/software/perl5lib/lib/perl5/

export LD_LIBRARY_PATH=/yuan/software/lib/:$LD_LIBRARY_PATH

#export PATH=/home/anaconda2/bin:$PATH
export PATH=/home/anaconda3/bin:$PATH

export PATH=$PIP/app/openssl/bin:$PATH
export LD_LIBRARY_PATH=$PIP/app/openssl/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=$PIP/app/openssl/include:$C_INCLUDE_PATH
export LIBRARY_PATH=$PIP/app/openssl/lib:$LIBRARY_PATH
export PATH=~/abysw:$PATH


### BIO software
export PATH=$PIP/app/multiz-tba.012109/bin:$PATH
export PATH=$PIP/app/mummer-4.0.0beta2/bin:$PATH
export PATH=$PIP/software/ncbi-igblast-1.13.0/bin:$PATH
export PATH=$PIP/app/samtools-1.9/bin:$PIP/app/hmmer-3.2.1/bin:$PATH
export PATH=$PIP/software/ncbi-blast-2.3.0+/bin:$PATH
export PATH=$PIP/software/phast/bin:$PATH
export PATH=$PIP/software/SOAPdenovo2-master:$PATH
export PATH=$PIP/compip/Plant/03_Phylogeny/bin:$PATH
export PATH=/public/software/meme-5.0.5/bin:$PATH
export PATH=$PIP/software/wise2.4.1/src/bin:$PATH
export PATH=$PIP/software/cufflinks-2.2.1.Linux_x86_64:$PATH
export WISECONFIGDIR=$PIP/software/wise2.4.1/wisecfg
export AUGUSTUS_CONFIG_PATH=/yuan/software/augustus.2.5.5/config/
export BLASTDB=/MAKER/RepeatMasker/Libraries/RepeatPeps.lib:/yuan/software/MAKER/RepeatMasker/Libraries/RepeatMasker.lib:$BLASTDB

### MAKER software
export ZOE=/MAKER/maker/exe/SNAP/Zoe
export PATH=/MAKER/maker/exe/SNAP:$PATH

#在PATH中找到可执行文件程序的路径。
#gcc找到头文件的路径#C_INCLUDE_PATH
#g++找到头文件的路径#CPLUS_INCLUDE_PATH
#找到动态链接库的路径#LD_LIBRARY_PATH
#找到静态库的路径#LIBRARY_PATH
#
alias cheng='echo hB8SfgUw;su chenglab'

export PATH=$PIP/11.CNS:$PIP/11.CNS/script:$PATH
export PATH=$PIP/callCEs:$PATH
###  alias  ###
alias gatkindex='gatk-4.1.2.0/gatk IndexFeatureFile -F '
alias vb="vim ~/.bashrc"
alias sb='source ~/.bashrc'
alias wl='wc -l'
alias tp='top -u `whoami`'
alias qs='qstat -u `whoami`'
alias ci='conda install -c bioconda '
alias l='ls -l -h'
alias grep='grep --color=auto'
alias qj='qstat -j '
alias bi='bedtools intersect'
alias bs='bedtools subtract'
alias cmd='cat ~/shell.sh'
alias vcmd='vi ~/shell.sh'
alias qq='cat ~/quick_qsub.history'
alias fs='faSize -detailed'
alias dug='du -sh * > du.log &'
alias wget='wget --no-check-certificate'
alias drawtree='draw_tree.pl'
alias altertree='alter_tree.pl'
