# Lazy load nvm
function nvm() {
    unset nvm
    zgen oh-my-zsh plugins/nvm
    nvm $@
}
