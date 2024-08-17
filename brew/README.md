# Installing Terminal Plugins via Brew

### Install Brew 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Export environment variable for `brew` by adding the following line in your `.zshrc` file
```
echo "export PATH=/usr/local/bin:$PATH"
```

### Install Plugins

##### 1. tmux
```
brew install tmux
```
##### 2. fzf
```
brew install fzf
```
Add the following line into `.zshrc`
```
eval "$(fzf --zsh)"
```
##### 3. bat
```
brew install bat
```

Add the following line into `.zshrc` to make fzf make use of bat for file preview
```
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
```
##### 4. lazygit
```
brew install lazygit
```
