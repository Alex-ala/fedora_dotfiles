if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/alex/.zshrc'
autoload -Uz compinit
compinit
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -e
source ~/.zsh.d/powerlevel9k.zsh
source ~/.zsh.d/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ala/auto-ls
antigen bundle sindresorhus/pretty-time-zsh
antigen bundle skx/sysadmin-util
antigen bundle jsontools
antigen bundle common-aliases
antigen bundle gitignore
antigen bundle sparsick/ansible-zsh
antigen bundle Tarrasch/zsh-bd
antigen bundle peterhurford/up.zsh
antigen bundle soimort/translate-shell
antigen bundle zsh-users/zsh-completions
antigen bundle felixr/docker-zsh-completion
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply
fpath=(~/.zsh.d $fpath)
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/opt/bins
export PATH
source ~/.zsh.d/work.bashrc
