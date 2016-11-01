export GOPATH=$HOME/projects/dev/golang/
export PATH=$PATH:$GOPATH/bin

##
# Your previous /Users/ryanwatkins/.bash_profile file was backed up as /Users/ryanwatkins/.bash_profile.macports-saved_2016-08-20_at_20:51:32
##

# MacPorts Installer addition on 2016-08-20_at_20:51:32: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion                                                                                                                                                                
fi


function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

alias s="git status -s"

