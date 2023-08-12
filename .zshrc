# this file is processed on each interactive invocation of zsh

# avoid problems with scp -- don't process the rest of the file if non-interactive
[[ $- != *i* ]] && return

PS1="%m %h %% "

alias mail=mailx

# My configs

if [ ! -d ~/.zsh/zsh-autosuggestions ]
then
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

setopt auto_cd
ENABLE_CORRECTION="true"

SAVEHIST=5000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

alias ls='exa'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='exa --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='exa -alF'
alias la='exa -A'
alias l='exa -CF'

# other aliases
alias v='nvim'
alias vi='nvim'
alias vim'nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


