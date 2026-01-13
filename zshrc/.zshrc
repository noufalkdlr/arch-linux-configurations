# --- Plugins ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Starship ---
eval "$(starship init zsh)"

# --- NVM Configuration ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# --- Default Browser ---
export BROWSER=firefox

# --- Yazi Wrapper Function ---
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# --- Basic Completion Config ---
autoload -Uz compinit
compinit

# Case Insensitive Matching (read -> README)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Menu Selection
zstyle ':completion:*' menu select

# Autosuggestion color change (Grey)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

fastfetch
