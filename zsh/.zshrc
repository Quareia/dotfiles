# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.antigen.zsh
#source /usr/share/zsh-antigen/antigen.zsh
antigen use oh-my-zsh

function _z() { _zlua "$@"; }

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found 
antigen bundle docker
antigen bundle git-open # open in browser
antigen bundle python
antigen bundle extract
antigen bundle colored-man-pages
# antigen bundle autopep8
# antigen bundle git-auto-fetch
# aintigen bundle gradle
# antigen bundle npm
# antigen bundle sudo # 2 Esc
# antigen bundle thefuck # 2 Esc correct
# antigen bundle ufw
# antigen bundle vscode # vs open file
# antigen bundle systemd

# Load bundles from external repos
antigen bundle skywind3000/z.lua # more faster than z.sh
antigen bundle changyuheng/fz # fizzy z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme romkatv/powerlevel10k 
#THEME=romkatv/powerlevel10k
#antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Paths
# export PATH="$HOME/anaconda3/bin:$PATH"


# Aliases
alias lzd='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v ~/.config/lazydocker:/.config/jesseduffield/lazydocker lazyteam/lazydocker'

alias vpn='~/Scripts/vpn.sh'
alias n='nvidia-smi'
alias d='source deactivate'
alias e='exec zsh'
alias c='clear'
alias cp='cp -i'
alias t='tree'
alias grep='grep --color=auto'

alias tl='tmux list-sessions'
alias ta='tmux a -t'
alias tn='tmux new -s'
alias tk='tmux kill-sessions -t'

alias vim='nvim'
alias vi='nvim'
