if [ "$SHELL" == "/bin/zsh" ]; then
    if [ -f ~/.zshrc ]; then
        . ~/.zshrc
    fi
fi

if [ "$SHELL" == "/bin/bash" ]; then
    if [ -f ~/.bash_profile ]; then
        . ~/.bash_profile
    fi
fi