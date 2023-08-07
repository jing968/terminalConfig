# terminalConfig

In order to use nvim and this config, the pre-requisite are as follow:
- ripgrep
- tree-sitter
- neovim of version >= 0.9
> All the above packages can be installed thorugh home brew

## how to apply this config
1. clone the repository
2. copy the the `.nvim` direcotry under the path `$HOME/.config/`
3. open `.nvim/plugins-setup.lua` in nvim, write to the file and source it, you should be able to see a list of packages being installed, you might run into some errors as some packages need to be installed before another, simply write and source the file a few times 
4. open `init.lua` in nivm, write and source the file
