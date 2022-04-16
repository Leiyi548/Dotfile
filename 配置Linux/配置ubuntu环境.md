# oh-my-zsh 配置

## ubuntu

### Install zsh

```sh
sudo apt install zsh
# set zsh as default shell
chsh -s $(which zsh)
# 重启虚拟机
echo $SHELL
```

### install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
```

### install zsh plugins

```sh
# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://api.mtr.pub/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://api.mtr.pub/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

git clone https://api.mtr.pub/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions


# install autojump
# macos
brew install autojump
# ubuntu
git clone git://github.com/wting/autojump.git

# 如果下载不了,可以使用github镜像下载
git clone https://hub.fastgit.xyz/wting/autojump.git
```

### install powerlevel10k

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

## Install Neovim(最新版本[*nightly*])

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# install clang dependence
sudo apt install clang
# install gcc dependence
sudo apt install gcc
```

## Install fzf

```sh
sudo apt-get install fzf
```

## Install neofetch

```sh
sudo apt install neofetch
```

## Install ranger

```sh
sudo apt install ranger
```

## Install Oh-my-tmux

```sh
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

## Install lazygit

```sh
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit
```

## Install brew

[ubuntu 安装 brew](https://blog.csdn.net/jinking01/article/details/108678196)

切记以上搞完之后我们还需要加 brew 加入自己的环境变量里面

chris 是我 ubuntu 的用户名

```sh
 export PATH="/home/chris/.linuxbrew/bin:$PATH"
```
