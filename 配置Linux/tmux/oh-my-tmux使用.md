# oh-my-tmux 使用

## tmux 是什么

我们在 linux 服务器上的工作一般都是通过一个终端连接软件连接到远端系统进行操作，例如使用 xshell 或者 SecureCRT 工具通过 ssh 进行远程连接。

在使用过程中，如果要做比较耗时的操作，例如有时候进行编译，或者下载大文件需要比较长的时间，一般情况下是下班之后直接运行希望第二天早上过来运行完成，这样就不用耽误工作时间。但是网络有时候不稳定，或者 timeout，可能在半夜会出现连接断掉的情况，一旦连接断掉，所执行的程序也就中断，当然可以写一个脚本后台运行，但是总不能每次都写脚本吧。

那么有没有一种工具可以解决这样的问题呢，当然是有的了，比如这里提到的 tmux。其实类似 tmux 的工具还有很多。例如 gnu screen 等。

tmux 使用更简单，功能也更强大，当在 tmux 中工作的时候，即使关掉 CRT 的连接窗口，再次连接，进入 tmux 的会话之前的工作仍然在继续。

tmux 是一个 linux 下面的工具，在使用之前需要安装，配置使用 oh-my-tmux（取名类似 oh-my-zsh）。

tmux 中有 3 种概念，会话(session)，窗口(window)，窗格(pane)。会话有点像是 tmux 的服务，在后端运行，可以通过 tmux 命令创建这种服务，并且可以通过 tmux 命令查看。一个 session 可以包含多个 window，一个 window 可以被分割成多个 pane。首先来看一下 tmux 的会话。

## tmux 的 session

1. `tmux new -s session_name` 新建一个名为 session_name 的会话
2. `<prefix> d` 退出会话,回到 shell 的终端环境
3. `tmux ls` 终端环境查看会话列表
4. `<prefix> s` 会话环境查看会话列表
5. `tmux a -t session_name` 终端环境进入会话
6. `tmux kill-session -t session_name` 终端环境销毁会话
7. `tmux rename -t old_session_name new_session_name` 或者 `<prefix> $` 终端环境重命名会话名
8. `tmux attach-session -t session_name` 连接名为 session_name 的会话

## Oh-my-tmux keybinding

tmux may be controlled from an attached client by using a key combination of a prefix key, followed by a command key. This configuration uses `C-a` as a secondary prefix while keeping `C-b` as the default prefix. In the following list of key bindings:

- `<prefix>` means you have to either hit Ctrl + a or Ctrl + b
- `<prefix> c` means you have to hit Ctrl + a or Ctrl + b followed by c
- `<prefix> C-c` means you have to hit Ctrl + a or Ctrl + b followed by Ctrl + c

This configuration uses the following bindings:

- `<prefix> e` opens `~/.tmux.conf.local` with the editor defined by the `$EDITOR` environment variable (defaults to `vim` when empty)
- `<prefix> r` reloads the configuration
- `C-l` clears both the screen and the tmux history
- `<prefix> C-c` creates a new session
- `<prefix> C-f` lets you switch to another session by name
- `<prefix> C-h` and `<prefix> C-l` let you navigate windows (default `<prefix> n` and `<prefix> p` are unbound)
- `<prefix> Tab` brings you to the last active window
- `<prefix> -` splits the current pane vertically
- `<prefix> _` splits the current pane horizontally
- `<prefix> h`, `<prefix> j`, `<prefix> k` and `<prefix> l` let you navigate panes ala Vim
- `<prefix> H`, `<prefix> J`, `<prefix> K`, `<prefix> L` let you resize panes
- `<prefix> <` and `<prefix> >` let you swap panes
- `<prefix> +` maximizes the current pane to a new window
- `<prefix> m` toggles mouse mode on or off
- `<prefix> U` launches Urlview (if available)
- `<prefix> F` launches Facebook PathPicker (if available)
- `<prefix> Enter` enters copy-mode
- `<prefix> b` lists the paste-buffers
- `<prefix> p` pastes from the top paste-buffer
- `<prefix> P` lets you choose the paste-buffer to paste from

Additionally, `copy-mode-vi` matches [my own Vim configuration](https://github.com/gpakosz/.vim.git)

Bindings for `copy-mode-vi`:

- `v` begins selection / visual mode
- `C-v` toggles between blockwise visual mode and visual mode
- `H` jumps to the start of line
- `L` jumps to the end of line
- `y` copies the selection to the top paste-buffer
- `Escape` cancels the current operation

## 我修改的 tmux 配置

第一个是在.tmux.conf.local 这个文件里面

### 修改 tmux 右边状态栏样式

```ssh
#tmux_conf_theme_status_right=" #{prefix}#{mouse}#{pairing}#{synchronized}#{?battery_status,#{battery_status},}#{?battery_bar, #{battery_bar},}#{?battery_percentage, #{battery_percentage},} , %R , %d %b | #{username}#{root} | #{hostname} "
tmux_conf_theme_status_right=" #{prefix}#{mouse}#{pairing}#{synchronized}#{?battery_status,#{battery_status},} , %R , %d %b | #{username}#{root} | #{hostname} "
```

### 开启鼠标模式

```sh
# 鼠标模式开启
# start with mouse mode enabled
set -g mouse on
```

第二个是在.tmux.conf 这个文件中修改

### 使用 ctrl a 加上左右键切换窗口

```sh
bind -r left previous-window # select previous window
bind -r right next-window # select previous window
```

把这个加入 .tmux.conf 支持 ctrl h j k l 切换窗口

```sh
# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

bind-key -T copy-mode-vi 'C-h' select-pane -L
bind-key -T copy-mode-vi 'C-j' select-pane -D
bind-key -T copy-mode-vi 'C-k' select-pane -U
bind-key -T copy-mode-vi 'C-l' select-pane -R
bind-key -T copy-mode-vi 'C-\' select-pane -l
```

### 解决在 tmux 中颜色不对问题

tmux > 2.2 后开始支持真彩色，注意检查你的版本！在`.tmux.conf` 中添加如下内容：

```sh
set -g default-terminal "screen-256color"
set-option -ga terminal-overrides ",*256col*:Tc"
```
