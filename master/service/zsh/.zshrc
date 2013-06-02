# Mounted shell path to existing
export PATH="$PATH:/home/batnerd/raidz/archive/development/scripts/shell"

# Stylize
autoload -Uz promptinit
promptinit
prompt adam1

# Aliases
alias ls='ls --color'
alias la='ls -lh'
alias ll='la -a'

# Bash style line-word manipulation
autoload -U select-word-style
select-word-style bash
bindkey "[C" forward-word
bindkey "[D" backward-word

# 'Modern' completion (no options decided on yet)
# autoload -Uz compinit
# compinit
