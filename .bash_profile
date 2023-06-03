# .bash_profile

PATH=$PATH:$HOME/bin

# ZSHELL="/blue/avery/ekoenig/conda/envs/zsh/bin/zsh"
# if [ "$SHELL" != $ZSHELL ]; then
#     echo "Changing shell to zsh"
#     export SHELL=$ZSHELL
#     exec $ZSHELL -l # -l: login shell again
# fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
