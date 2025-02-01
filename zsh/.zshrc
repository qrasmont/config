# Configure history
HISTSIZE=15000
SAVEHIST=15000
HISTFILE=$HOME/.zsh_history

autoload -Uz colors && colors

# Source plugins
source $HOME/.zsh_plugins.sh

# Auto-suggest options
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Enable better tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Move with vim keys in menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Bind keys for substring sreach
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export PATH="$PATH:/home/quentin/dev/depot_tools"
export CHROME_DEVEL_SANDBOX="$PATH:/usr/local/sbin/chrome-devel-sandbox"
export PATH="$PATH:/home/quentin/android-studio/bin"

alias gl="git log"
alias gd="git diff"
alias gdd="git diff HEAD~1 HEAD"
alias gs="git status"
alias glg="git log --all --decorate --oneline --graph"
alias v="nvim"
alias ls="ls --color=auto"

export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# GO Lang setup
export GOBIN="$HOME/.local/go/bin"
export PATH=$PATH:$GOBIN

source $HOME/.privaterc

# Jupyterlab
export PATH="$HOME/.local/bin:$PATH"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"

alias luamake=/home/quentin/dev/personal/lua-language-server/3rd/luamake/luamake

#Virtualenvwrapper settings:
export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

alias p="projectile"
export EDITOR=/usr/local/bin/nvim

export DOTNET_CLI_TELEMETRY_OPTOUT=1 # What a wonderful world we leave in
export DOTNET_TOOLS="$HOME/.dotnet/tools"
export PATH=$PATH:$DOTNET_TOOLS

# Pyenv environment variables
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# Pyenv initialization
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

export ZIG="$HOME/.local/zig-linux-x86_64-0.13.0"
export PATH=$PATH:$ZIG
