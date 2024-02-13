<<<<<<< HEAD
#!/bin/bash

echo "Moving configs to home directory"

cp -v .bashrc $HOME/.bashrc
cp -v .bash_profile $HOME/.bash_profile
cp -v .bash_logout $HOME/.bash_logout
cp -v .zshrc $HOME/.zshrc
cp -v .userrc $HOME/.userrc
=======
CFGS=(
    bash_logout
    bash_profile
    bashrc
    userrc
)
>>>>>>> from-hpg
