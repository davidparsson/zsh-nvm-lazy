# Lazy load nvm, with multiple entrypoints
ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node' 'gulp')
for NODE_BINARY in $ZSH_LAZY_NVM_BINARIES
do
    $NODE_BINARY() {
        for FUNCTION in $ZSH_LAZY_NVM_BINARIES
        do
            unset -f $FUNCTION
        done
        zgen oh-my-zsh plugins/nvm
        $NODE_BINARY $@
    }
done
