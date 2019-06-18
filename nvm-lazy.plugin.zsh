# Lazy load nvm
function nvm() {
    unset -f nvm
    zgen oh-my-zsh plugins/nvm
    nvm $@
}
