# env vars
export NDDSHOME=/Applications/rti_connext_dds-5.2.3
export RTI_LICENSE_FILE=/Applications/rti_connext_dds-5.2.3/rti_license.dat
export VAHANA_REPOS=/Users/nihar/vahana_repos
export VAHANA_IDL_PATH=$VAHANA_REPOS/vahana_idl
export VAHANA_IDL_CPP_DIR=VAHANA_IDL_PATH/cpp
export VAHANA_NAVIO_SRC=$VAHANA_REPOS/Navio2/C++
export RTI_LD_LIBRARY_PATH='/Applications/rti_connext_dds-5.2.3/lib/x64Darwin15clang7.0' # needed for MATLAB / DDS blockset
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer                          # needed for MATLAB / DDS blockset

# path modifications
export PATH=$HOME/bin:$PATH                             # ARM compilers
export PATH=$NDDSHOME/bin:$PATH                         # Connext binaries 
export PATH=/Applications/MATLAB_R2016b.app/bin/:$PATH  # MATLAB

# app shortcuts
alias dockeravionics="docker run -v /Users:/host/Users -it avionics/ubuntu:v1.1 /bin/bash"
alias sshdeskpi="ssh pi@192.168.2.7"

# ls aliases
alias ls='ls -G'       # colorize
alias ll='ls -alh'     # list, human-readable
alias llt='ls -alth && echo "-------OLDEST-------"'   # sort by modified time
alias lls='ls -alSh'   # sort by file size

# colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# useful date output for filenames
alias datestring="date '+%Y%m%d_%H%M%S'"

# transfer folders with progress
alias myrsync='rsync --progress -avz'

# activate bash-completion (see https://github.com/scop/bash-completion)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
