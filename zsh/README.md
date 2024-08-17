# Installing and configuring zsh

> You will need `Git` to be able to install certain plugins

### 1. Installing `zsh`
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

You can install `zsh` via `Brew` or `wget` 

### 2. Changing default shell to use `zsh`


### 3. Installing zsh plugins
Installing some packges locally
- zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```
- zsh-syntax-highlight
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

Update your zsh-plugins list in the `.zshrc` file to specify the installed plugins as well as other plugins
that does not require explicty install.
```
plugins=(git z extracts zsh-autosuggestions zsh-syntax-highlighting themes)
```




