export PATH=/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
autoload -U colors && colors

test -r "~/.config/zsh/dir_colors" && eval $(dircolors ~/.config/zsh/dir_colors)

export PROMPT='%B%F{yellow}%1~ $ %f%b'
export DEFAULT_USER=$USER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="lsd -AlG"
alias la="lsd -A1"
alias j="just"

[ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh
alias nv="nvim"
alias nvn="nvim ."
alias tm="tmux"
alias tmt="tmux a"
alias zshcfg="nv ~/.config/zsh/.zshrc"
alias reset="clear && reload"
alias mpd="mpd ~/.config/mpd/mpd.conf"
alias cava="TERM=xterm-kitty cava"
alias mpdkill="kill $(lsof -i :6600)"
alias duh="du -h -d 1"
alias armgcc="arm-none-eabi-gcc"
alias armgdb="arm-none-eabi-gdb"

bindkey -v

eval $(thefuck --alias)

reload() {
    source ~/.config/zsh/.zshrc
}

bindkey -s '^f' "tmux-sessioniser ^M"
bindkey -ar "^z"

neofetch
