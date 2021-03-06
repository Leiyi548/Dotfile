# Install

## install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
```

## install zsh plugins

```sh
# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# install autojump
# macos
brew install autojump
# ubuntu
git clone git://github.com/wting/autojump.git

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/wting/autojump.git
```

## install powerlevel10k

```sh
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  autojump
  zsh-completions
)
```

### 配置 powerlevel10k

```sh
p10k configure
```

### 配置 ranger

```sh
brew install ranger
```
