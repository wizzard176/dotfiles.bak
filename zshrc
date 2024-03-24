### VARIABLES ###
XDG_DATA_HOME=$HOME/.local/share
XDG_CACHE_HOME=$HOME/.cache
XDG_CONFIG_HOME=$HOME/.config
HISTFILE=~/.config/zsh/histfile
HISTSIZE=0
SAVEHIST=0
CALCHISTFILE="$XDG_CACHE_HOME"/calc_history
CARGO_HOME="$XDG_DATA_HOME"/cargo
GNUPGHOME="$XDG_DATA_HOME"/gnupg
GOPATH="$XDG_DATA_HOME"/go
GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

PROMPT="%~> "
TERM=xterm-kitty
VISUAL=vim
EDITOR=vim
ZSH_AUTOSUGGEST_STRATEGY=(completion)


### PATH ###
export PATH=$PATH:/usr/sbin:$HOME/.local/share/cargo/bin:$HOME/.local/bin:$HOME/.local/share/go/bin:$HOME/.emacs.d/bin

### ALIASES ###
alias ls="eza -1 --icons --group-directories-first"
alias ll="eza -l --icons --group-directories-first"
alias grep="grep --color=auto"
alias free="free -m"
alias cat=bat
alias cd="z"
alias cdi="zi"
alias "dnf install"= "dnf install -C"

### SETOP / UNSETOP ###
setopt autocd nomatch automenu 
setopt interactive_comments
zle_highlight=("paste:none")
unsetopt beep extendedglob notify

### KEYS ###
bindkey -e
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

### AUTOLOAD ###
zstyle :compinstall filename '/home/votope/.zshrc'
eval "$(zoxide init zsh)"
autoload -Uz compinit
autoload -Uz promptinit
compinit
promptinit

### COLORS ###
autoload -Uz colors && colors

### PLUGINS ###
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"

unsetopt nomatch
# End of lines added by compinstall
