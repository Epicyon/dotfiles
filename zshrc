autoload -U compinit && compinit
autoload colors && colors

bindkey "^[" vi-cmd-mode

source ~/.zsh/exports.zsh
source ~/.zsh/keybindings.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
if [[ -f ~/.zsh/private.zsh ]] ; then source ~/.zsh/private.zsh ; fi

eval "$(rbenv init -)"
