# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ $TERM="xterm-256color" ]
then
    eval `dircolors ~/.dir_colors`
    PS1='\[\e[1;35m\][\[\e[1;33m\]\u@\h \A \[\e[1;36m\]\w\[\e[1;35m\]]\[\e[1;31m\]\n\$ \[\e[0m\]'
else
    LS_OPTIONS='--color'
    export LS_COLORS
fi
export LS_OPTIONS
#export PATH=/public/agis/chengshifeng_group/xianwenfei/software/:$PATH
export PATH=/public/software/bin:$PATH
export PATH=/public/agis/fanwei_group/fanwei/bin:$PATH
export PATH=/public/software/gcc-6.4.0/bin:$PATH
### my home ###
PIP=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan
export PATH=~/bin:$PIP/usr:$PIP/usr/bin:$PIP/bin:$PIP/bin/UCSC:$PATH
#export PATH=$PIP/app/anaconda2/bin:$PATH
export PATH=$PIP/app/perl-5.14.2/bin:$PATH

### Library ###
export LD_LIBRARY_PATH=/public/software/gcc-6.4.0/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/urs/lib:/urs/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PIP/lib:$PIP/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PIP/urs/lib:$PIP/urs/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/usr/lib64/mysql:$LD_LIBRARY_PATH

export C_INCLUDE_PATH=$PIP/usr/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/usr/include:$C_INCLUDE_PATH
export PERL5LIB=$PIP/lib:$PERL5LIB
#export PERL5LIB=$PERL5LIB:/public/software/perl5lib/lib/perl5/
#export PERL5LIB=/public/software/perl5lib/lib/perl5:$PERL5LIB
export LD_LIBRARY_PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/lib/:$LD_LIBRARY_PATH

#export PATH=/public/home/fuyuan/anaconda2/bin:$PATH
export PATH=/public/home/fuyuan/anaconda3/bin:$PATH

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
export AUGUSTUS_CONFIG_PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/augustus.2.5.5/config/
export BLASTDB=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/MAKER/RepeatMasker/Libraries/RepeatPeps.lib:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/MAKER/RepeatMasker/Libraries/RepeatMasker.lib:$BLASTDB

### MAKER software
export ZOE=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/MAKER/maker/exe/SNAP/Zoe
export PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/MAKER/maker/exe/SNAP:$PATH
#export PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/hdf5-1.10.5/bin:$PATH
#export h5prefix=-prefix=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/hdf5-1.10.5
#export ENABLE_UDC=1
#export KENTSRC=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/kent/src
#export ENABLE_PHYLOP=1
#export PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/HAL/hal/bin:$PATH
#export PYTHONPATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/HAL/hal:$PYTHONPATH
#export CLAPACKPATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/HAL/clapack
#export PHAST=$PIP/software/phast
#export PATH=/public/software/git-2.9.5/libexec/git-core:$PATH
#export C_INCLUDE_PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/ComparativeGenomicsToolkit/local/include:$C_INCLUDE_PATH
#export PATH=/public/agis/huangsanwen_group/xinhongjia/software/RepeatMasker:$PATH
#export PATH=/public/agis/huangsanwen_group/xinhongjia/software/RepeatModeler-open-1.0.11:$PATH
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
alias gatkindex='/public/agis/chengshifeng_group/fengcong/WGRS/software/gatk-4.1.2.0/gatk IndexFeatureFile -F '
alias fy='cd /public/agis/chengshifeng_group/fuyuan'
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
alias pb='export PATH=/public/agis/chengshifeng_group/fuyuan/pbconda/bin:$PATH'
alias pb2='export PATH=/public/agis/chengshifeng_group/fuyuan/conda2/bin'
alias dug='du -sh * > du.log &'
alias wget='wget --no-check-certificate'
alias drawtree='/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/compip/Plant/03_Phylogeny/bin/draw_tree.pl'
alias altertree='/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/compip/Plant/03_Phylogeny/bin/alter_tree.pl'
alias wh='samtools view -T /public/agis/chengshifeng_group/fengcong/WGRS/graduation_project/00.var_genome/161010_Chinese_Spring_v1.0_pseudomolecules_parts.fasta '
alias wheatpan="cd /vol3/agis/chengshifeng_group/fuyuan/01.wheat/01.Pan/03.call_snp/02.callSNP/hbliu/"
alias wheattra="cd /vol2/agis/chengshifeng_group/fuyuan/30.Hapmap/04.Training/VQSR/"
alias c4="cd /vol3/agis/chengshifeng_group/fuyuan/02.C4_Project/"

#alias 4line='perl -ne \'$l=split;print $l."\n"\''
#/public/agis/chengshifeng_group/fuyuan/condapacb/bin:$PATH'

#export PATH=/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/gnuplot-5.2.0/src:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/callCEs:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/11.CNS:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/11.CNS/script:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/MAKER/maker/exe/SNAP:/public/software/meme-5.0.5/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/compip/Plant/03_Phylogeny/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/SOAPdenovo2-master:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/phast/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/ncbi-blast-2.3.0+/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/samtools-1.9/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/hmmer-3.2.1/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/software/ncbi-igblast-1.13.0/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/mummer-4.0.0beta2/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/multiz-tba.012109/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/openssl/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/perl-5.14.2/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/app/anaconda2/bin:/public/home/fuyuan/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/usr:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/usr/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/bin:/public/agis/chengshifeng_group/fuyuan/pip-fuyuan/bin/UCSC:/public/software/gcc-6.4.0/bin:/public/agis/fanwei_group/fanwei/bin:/public/software/bin:/usr/lib64/qt-3.3/bin:/public/software/mpi/openmpi/1.6.5/intel/bin:/opt/gridview//pbs/dispatcher-sched/bin:/opt/gridview//pbs/dispatcher-sched/sbin:/opt/gridview//pbs/dispatcher/bin/lsf_cmd:/opt/gridview//pbs/dispatcher/bin:/opt/gridview//pbs/dispatcher/sbin:/public/software/compiler/intel/composer_xe_2013_sp1.0.080/bin/intel64:/opt/clusconf/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib64/alliance/bin:/opt/ibutils/bin:/public/home/fuyuan/bin
