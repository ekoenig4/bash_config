
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [[ "$HOSTNAME" == uwlogin* ]]; then

    # This gets you some software needed for CONDOR submission
    if [ -f /cms/setup/bashrc ]; then
        . /cms/setup/bashrc
    fi

    # Alias to get access to your /afs/hep.wisc.edu area (but you lose /afs/cern.sh access)
    alias uw='kinit ekoenig4@HEP.WISC.EDU; aklog -c hep.wisc.edu'
    alias hep='cd /afs/hep.wisc.edu/home/ekoenig4/'

    # Put Git cache somewhere with plenty of space
    export CMSSW_GIT_REFERENCE=/data/ekoenig4/.cmsgit-cache;

    # Use updated versions of Git and Python (and some Python utilities) outside of a CMSSW environment
    export PATH=/cms/sw/python/bin/:/cms/sw/python/lib/:/cms/sw/git/bin/:"$PATH"
    # Git does its own funny business with paths, so do this to make sure it works
    export GIT_EXEC_PATH=/cms/sw/git/libexec/git-core

    # Make ROOT/PyROOT available outside a CMSSW environment
    . /afs/cern.ch/sw/lcg/external/gcc/4.8/x86_64-slc6/setup.sh
    . /afs/cern.ch/sw/lcg/app/releases/ROOT/5.34.30/x86_64-slc6-gcc48-opt/root/bin/thisroot.sh
fi

if [[ "$HOSTNAME" == lxplus* ]]; then
    alias uw='kinit ekoenig4@HEP.WISC.EDU; aklog -c hep.wisc.edu'
    alias hep='cd /afs/hep.wisc.edu/home/ekoenig4/'
fi

alias root='root -l'

alias cards='cd /data/ekoenig/MonoZprimeJet/HiggsCombine/CMSSW_8_1_0/src/HiggsAnalysis/CombinedLimit/'

alias zprime='cd /data/ekoenig/MonoZprimeJet/CMSSW_8_0_26_patch1/src/ZprimeTools/'

alias gif='cd /afs/cern.ch/user/k/kkuzn/public/CSC/GC/'
alias gc='cd /data/ekoenig/CSC/GC/CMSSW_8_0_26_patch1/src/GC/treatGC/'
alias gg='cd /data/ekoenig/CSC/GasGain/CMSSW_6_2_12/src'
alias gg2='cd /data/ekoenig/CSC/GasGain/CMSSW_7_5_9/src/WorkingArea/Gif/test/'

#export DISPLAY=localhost:0.0
alias clear='printf "\033c"'

alias crabenv='source /cvmfs/cms.cern.ch/crab3/crab.sh'
alias voms='voms-proxy-init --rfc --voms cms -valid 192:00'
alias cmsvoms='voms-proxy-init -voms cms -valid 144:00'

export FEOS=root://cmseos.fnal.gov/
export CEOS=root://eoscms.cern.ch/

export X509_USER_PROXY=$HOME/.krb5/x509up_u`id -u`

# >>> conda initialize >>>

alias conda=mamba
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/afs/cern.ch/user/e/ekoenig/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/afs/cern.ch/user/e/ekoenig/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/afs/cern.ch/user/e/ekoenig/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/afs/cern.ch/user/e/ekoenig/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/afs/cern.ch/user/e/ekoenig/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/afs/cern.ch/user/e/ekoenig/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

