# Input
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off
set completion-ignore-case on
set completion-prefix-display-length 2
set show-all-if-ambiguous on
set show-all-if-unmodified on
set mark-symlinked-directories on
set match-hidden-files off
set page-completions off
set completion-query-items 200
set visible-stats on

# shell
autoload -Uz vcs_info compinit
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# deno
[ -s "$HOME/.deno/env" ] && source $HOME/.deno/env

# cargo
[ -s "$HOME/.cargo/env" ] && source $HOME/.cargo/env

# nvm
[ -s "$HOME/.nvm/nvm.sh" ] && source "$HOME/.nvm/nvm.sh"

# bin paths
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.venv/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:$HOME/.bun/bin

# aliases
alias rc="vim ~/.zshrc && source ~/.zshrc"
alias sshrc="vim ~/.ssh/config"
alias gst="git status"
alias gc="git commit"
alias gp="git push"
alias gup="git pull"
alias gacp="git add -A; git commit; git push origin"
alias gd="git diff"
alias l="ls -lrt"
alias dc="podman compose"
alias x="exit"
alias c="clear"
alias tf="terraform"

# functions
cdd() {
  mkdir -p "${1}"
  cd "${1}"
}