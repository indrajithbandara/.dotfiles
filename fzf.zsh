# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ryanwatkins/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ryanwatkins/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */Users/ryanwatkins/.fzf/man* && -d "/Users/ryanwatkins/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/ryanwatkins/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ryanwatkins/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/ryanwatkins/.fzf/shell/key-bindings.zsh"

