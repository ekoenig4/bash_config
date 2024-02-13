if [ "$SHELL" == "/bin/zsh" ]; then
    if [ -f ~/.zshrc ]; then
        . ~/.zshrc
    fi
fi

if [ "$SHELL" == "/bin/bash" ]; then
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi
fi
