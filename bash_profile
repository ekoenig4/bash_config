if [ "$SHELL" == "/bin/zsh" ]; then
    if [ -f ~/.zshrc ]; then
        . ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
