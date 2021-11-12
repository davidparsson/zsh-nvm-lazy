# Lazy load nvm, with multiple entrypoints
# Add more entrypoints by defining the ZSH_LAZY_NVM_BINARIES array
if [ -z "$ZSH_LAZY_NVM_BINARIES" ]; then
    ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node')
fi

_zsh_lazy_nvm_replace_binaries_and_call() {
    local BINARY=$1
    for FUNCTION in $ZSH_LAZY_NVM_BINARIES
    do
        unset -f $FUNCTION
    done
    zgen oh-my-zsh plugins/nvm
    $@
}

for NODE_BINARY in $ZSH_LAZY_NVM_BINARIES
do
    eval "$NODE_BINARY() _zsh_lazy_nvm_replace_binaries_and_call '$NODE_BINARY' \$@"
done
