################
### env vars ###
################
export NDDSHOME=/Applications/rti_connext_dds-5.3.1
export RTI_LICENSE_FILE=$NDDSHOME/rti_license.dat
export VAHANA_REPOS=/Users/nihar/vahana_repos
export VAHANA_IDL_PATH=$VAHANA_REPOS/vahana_idl
export VAHANA_IDL_CPP_DIR=VAHANA_IDL_PATH/cpp
export VAHANA_NAVIO_SRC=$VAHANA_REPOS/Navio2/C++
export RTI_LD_LIBRARY_PATH=$NDDSHOME/lib/x64Darwin16clang8.0 # needed for MATLAB / DDS blockset
export MATLAB_SHELL='/bin/bash'
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer                          # needed for MATLAB / DDS blockset
export TESTDATA_REPO=~/testdata
export DESERIALIZE_DIR='/Users/nihar/vahana_repos/vahana_test/tools/data_recorder'
export RESCALE_API_KEY=669f07e5433a190e347569729795d45abf4b2a40

##########################
### path modifications ###
##########################
export PATH=$HOME/bin:$PATH                             # ARM compilers
export PATH=$NDDSHOME/bin:$PATH                         # Connext binaries 
export PATH=/Applications/MATLAB_R2018b.app/bin/:$PATH  # MATLAB
export PATH=/Applications/Julia-1.0.app/Contents/Resources/julia/bin/:$PATH

###############
### aliases ###
###############
# app shortcuts
alias dockermtc="docker run -v /Users:/host/Users -it nihar/mcbuild-gcc48:latest /bin/bash"
alias sshdeskpi="ssh pi@192.168.2.21"
alias mounttestdata="umount ~/testdata; sshfs nihar.gandhi@10.1.2.91:/srv/data/ ~/testdata -o volname=TESTDATA -o umask=000 -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 -o noappledouble"
alias mounttestdataext="umount ~/testdata; sshfs -p 48022 nihar.gandhi@12.226.246.98:/srv/data/ ~/testdata -o volname=TESTDATA -o umask=000 -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 -o noappledouble"
alias mounttestdataaws="umount ~/testdata; sshfs testdataaws:/srv/data/ ~/testdata -o volname=TESTDATA -o umask=000 -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 -o noappledouble"

# ls aliases
alias ls='ls -G'       # colorize
alias ll='ls -alh'     # list, human-readable
alias llt='ls -althr && echo "-------NEWEST-------"'   # sort by modified time
alias lls='ls -alSh'   # sort by file size

# colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# useful date output for filenames
alias datestring="date '+%Y%m%d_%H%M%S'"

# transfer folders with progress
alias myrsync='rsync --progress -avz'

#####################
### miscellaneous ###
#####################
# activate bash-completion (see https://github.com/scop/bash-completion)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# activate bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
__GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi
