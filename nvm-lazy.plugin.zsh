# Lazy load nvm, with multiple entrypoints
# Add more entrypoints by defining the ZSH_LAZY_NVM_BINARIES array
if [ -z "$ZSH_LAZY_NVM_BINARIES" ]; then
    ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node')
fi

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
