#.zsh config

#promt load
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

#plugins
plugins=(git docker npm pip sudo macos zsh-autosuggestions command-not-found zsh-syntax-highlighting 1password)

#reload oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#export loads from aliases, goto, nvm, pnpm, starship
source ~/.zsh/goto.zsh && [[ -f ~/.zsh/goto.zsh ]] 
source ~/.zsh/nvm.zsh && [[ -f ~/.zsh/nvm.zsh ]]
source ~/.zsh/pnpm.zsh && [[ -f ~/.zsh/pnpm.zsh ]]
source ~/.zsh/aliases.zsh && [[ -f ~/.zsh/aliases.zsh ]]
source ~/.zsh/starship.zsh && [[ -f ~/.zsh/starship.zsh ]]

#loading starship
eval "$(starship init zsh)"

#loading neofetch
neofetch
