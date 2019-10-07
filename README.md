# zsh-nvm-lazy
A zgen plugin for lazy loading of oh-my-zsh's nvm plugin. It supports lazy-loading nvm for more than one binary/entrypoint, with the defaults being `nvm`, `node` and `npm`.

To extend these, export `ZSH_LAZY_NVM_BINARIES` before the plugin is loaded, like this:
```
export ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node' 'gulp')
```
