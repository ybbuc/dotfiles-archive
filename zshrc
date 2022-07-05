# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"  # Postgres.app
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/texlive/2022/bin/universal-darwin:$PATH" # TeX Live
export PATH="$HOME/.cargo/bin:$PATH"  # Cargo

# Path to oh-my-zsh installation
export ZSH="/Users/cubby/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    colorize
    command-not-found)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias python='python3'
alias tx='tmuxinator'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
