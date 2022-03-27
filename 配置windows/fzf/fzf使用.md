# fzf 的使用(win11)

[fzf](https://github.com/junegunn/fzf) 是个用 go 写的多平台模糊搜索神器，（fuzzy finder）

## Install

Windows

```sh
scoop install fzf
```

## Usage

### 启动

在命令行输入命令启动，默认启动会以当前目录为根目录进行搜索。
命令行启动时可以加入一些参数，如下所示（参数可以叠加）:
`fzf --height 50%` 默认以全屏启动，可以指定启动的占命令行界面的百分比。
`fzf --reverse` 默认的搜索位置在最下面，可以通过 `reverse` 参数调换搜索的上下位置。

### 修改 fzf 默认配置

### 移动 (浏览)

**Emacs 风格按键绑定**
**支持鼠标操作**

向上移动光标: `ctrl+p` 或 `ctrl+k`
向下移动光标: `ctrl+n` 或 `ctrl+j`
退出: `ctrl+c` 或 `ctrl+g` 或 `esc`

多选 (需要以多选模式启动,即添加 -m 选项启动)

- 向下选择（可一直按住快速选择）tab
- 向上选择（可一直按住快速选择）shift+tab

### 搜索(匹配语法)

**fzf 默认不支持正则表达式**,为了操作更加简单直接,通过空格分隔单词,查找所有字符串 (无序).fzf 还提供了一些增强功能的搜索语法,如下表所示:

| 标记    | 匹配类型         | 描述                           |
| ------- | ---------------- | ------------------------------ |
| sbtrkt  | 模糊匹配         | 内容匹配 `sbtrkt`(字符匹配)    |
| 'wild   | 精确匹配(单引号) | 内容包含单词 `wild` (单词匹配) |
| ^music  | 前缀精确匹配     | 以 `music` 开头进行匹配        |
| .mp3$   | 后缀精确匹配     | 以 `.mp3` 开头进行匹配         |
| !fire   | 反转匹配         | 内容不包含 `fire`              |
| !^music | 前缀反转匹配     | 不以 `music` 开头              |
| !.mp3$  | 后缀反转匹配     | 不以 `.mp3` 结尾               |

### powershell 配置

```sh
# 修改fzf快捷键
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadlineChordReversehistory 'Ctrl+r'
```

#### 安装 PSFzf

```sh
Install-Module -Name PSFzf -Scope CurrentUser -SkipPublisherCheck
```

#### PSFzf 使用

- [配置别名](https://github.com/kelleyma49/PSFzf#helper-functions)

我常用的命令
| key | action |
|--------------- | --------------- |
|`fe` | 在模糊查找器中为选定的文件启动编辑器。 |
| `fz` | 从 ZLocation 的历史输入启动 fzf，并设置当前位置。 |
| `fh` | 根据用户在 fzf 中的选择，从历史记录中重新运行以前的命令。 |
| `fkill` | 在用户在 fzf 中选择的进程上运行 Stop-Process。 |

#### 参考链接

- [fzf github](https://github.com/junegunn/fzf)
- [fzf - 命令行模糊搜索神器](https://www.jianshu.com/p/b48131e4ad06)
