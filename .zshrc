# Alias and Functions
source ~/.shell/.alias_func.sh

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# External settings
source ~/.shell/external.sh

# Custom prompt
source ~/.zsh/prompt.zsh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/[C]}/(main|viins)/}"
#     RPS2=$RPS1
#     zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select
# setopt transientrprompt
