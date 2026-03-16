#
# ~/.bashrc
#

eval "$(starship init bash)"

# Skip tmux inside VS Code
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    return
fi

# Auto-start tmux only once, replacing the shell
if [ -z "$TMUX" ] && [ -z "$TMUX_STARTED" ]; then
    export TMUX_STARTED=1

    # If a session exists, attach; otherwise create a new one
    if tmux has-session 2>/dev/null; then
        exec tmux attach
    else
        exec tmux new
    fi
fi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
