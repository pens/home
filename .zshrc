# case-insensitive autocomplete
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/pens/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt
PS1="%S%1~>%s "

# aliases
alias vi=nvim
