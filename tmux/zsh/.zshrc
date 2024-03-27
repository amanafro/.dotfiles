if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

 alias ohmyzsh="mate ~/.oh-my-zsh"
source /home/aman/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/home/aman/.bun/_bun" ] && source "/home/aman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Add Python virtual environment activation
export PATH="myenv/bin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'

eval "$(atuin init zsh)"
