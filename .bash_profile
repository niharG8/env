## .bash_profile run on login shells, while .bashrc is run on interactive shells ##
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

