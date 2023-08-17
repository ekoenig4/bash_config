
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f ~/.userrc ]; then
    . ~/.userrc
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

#export DISPLAY=localhost:0.0
