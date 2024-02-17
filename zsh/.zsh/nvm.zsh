# # NVM lazy load
# if [ -s "$HOME/.nvm/nvm.sh" ]; then
#   export NVM_DIR="$HOME/.nvm"

#   # Load NVM
#   . "$NVM_DIR/nvm.sh"

#   # Load NVM bash completion
#   if [ -s "$NVM_DIR/etc/bash_completion.d/nvm" ]; then
#     . "$NVM_DIR/etc/bash_completion.d/nvm"
#   fi

#   # Place this after nvm initialization!
#   autoload -U add-zsh-hook
#   load-nvmrc

#   # Remove Homebrew-specific references
#   unset HOMEBREW_PREFIX

#   # Load NVM on directory change
#   add-zsh-hook chpwd load-nvmrc

#   # Load NVM on startup
#   load-nvmrc

#   # Alias Node Commands
#   alias nvm='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && nvm'
#   alias node='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && node'
#   alias npm='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && npm'
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
 local node_version="$(nvm version)"
 local nvmrc_path="$(nvm_find_nvmrc)"

 if [ -n "$nvmrc_path" ]; then
   local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

   if [ "$nvmrc_node_version" = "N/A" ]; then
     nvm install
   elif [ "$nvmrc_node_version" != "$node_version" ]; then
     nvm use
   fi
 elif [ "$node_version" != "$(nvm version default)" ]; then
   echo "Reverting to nvm default version"
   nvm use default
 fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
