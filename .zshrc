# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path vers Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Thème Powerlevel10k (Le style Flex)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/ohmyzsh.sh

# --- TES ALIAS FLEX ---
alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias lt='lsd --tree'
alias gemini='mods --model gm2f'
# Couleur des suggestions (gris discret)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# Chargement de la config visuelle p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fastfetch --logo Panwah --logo-color-2 red --logo-color-1 white
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
