if tty -s && command -v nvidia-smi &> /dev/null; then
    nvidia-smi
fi

if [ "$SHELL" != "/bin/zsh" ]; then
    export SHELL="/bin/zsh"
    exec /bin/zsh -l # -l: login shell again
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
