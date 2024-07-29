export EDITOR="code"
export PATH="/opt/homebrew/bin:$PATH"

# make tab-completion case-insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'lsd --tree {} | head -200'   "$@" ;;
    z)            fzf --preview 'lsd --tree {} | head -200'   "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
  esac
}
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'       

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

alias ll="lsd -l"
alias la="lsd -A"
alias lla="lsd -lA"
alias lt="lsd --tree"
alias cp="xcp"
alias cd="z"
alias cdi="zi"
alias top="btm"

# probably needs to be after fzf --zsh, so it can override crtl-r
eval "$(atuin init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:/Users/ante/opt/active-node/bin/  # workplace-path-node
export PATH=$PATH:/Users/ante/opt/workplace/generated-bin/ # generated-bin-path
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"
export PATH="$PATH:/Users/ante/Library/Application Support/JetBrains/Toolbox/scripts"
