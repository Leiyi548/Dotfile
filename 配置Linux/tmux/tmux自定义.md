# tmux 自定义

## 1. 介绍

tmux 是一个优秀的终端复用软件，split 窗口。可以在一个 terminal（终端）下打开多个终端。即使非正常掉线，也能保证当前的任务运行，这一点对于远程 SSH 访问特别有用，网络不好的情况下仍然能保证工作现场不丢失。SSH 重新连接以后，就可以直接回到原来的工作环境，不但提高了工作效率，还降低了风险，增加了安全性。tmux 完全使用键盘控制窗口，实现窗口的切换功能。

## 2. 安装

### 2.1. Stable version

- ubuntu

```sh
sudo apt install tmux
```

- macos

```sh
brew install tmux
```

### 2.2. Nightly version

- ubuntu

通过 apt-get 安装的 tmux 版本比较旧，我喜欢使用最新的版本。那就自己编译安装一下吧。很简单，耗时 1 分钟左右。

#### 2.2.1. remove old version

```sh
sudo apt remove tmux
```

#### 2.2.2. 准备工作

```sh
sudo apt-get install -y libevent-dev ncurses-dev build-essential bison pkg-config automake
```

#### 2.2.3. 编译

```sh
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && sudo make install
```

### 2.3. Check Install

View the tmux number

```sh
tmux -V
```

## 3. 配置 Tmux

tmux 配置文件在`~/.tmux.conf`

### 3.1. 安装 Tmux 插件管理器(tpm)

[github 仓库](https://github.com/tmux-plugins/tpm)

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Put this at the bottom of `~/.tmux.conf` ($XDG_CONFIG_HOME/tmux/tmux.conf works too):

```conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

Reload TMUX environment so TPM is sourced:

```sh
# type this in terminal if tmux is already running
$ tmux source ~/.tmux.conf
```
