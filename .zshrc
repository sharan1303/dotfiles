# Paths
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
alias lg="lazygit"
alias c-="clear"

# Enable git info in prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the git branch info
zstyle ':vcs_info:git:*' formats ' git:(%F{210}%b%f)'
zstyle ':vcs_info:*' enable git

# Set up the prompt options
setopt PROMPT_SUBST

# directory + git branch + × symbol
PROMPT='%F{222}%c%f%F{110}${vcs_info_msg_0_}%f %F{222}×%f '

# Node
export PATH="/opt/homebrew/opt/node@24/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh --cmd cd)"
export PATH="$HOME/.local/bin:$PATH"
