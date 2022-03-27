# 配置我的 windows (Oh My Windows)

## 我平时需要用的软件安装地址

- [vscode 安装地址](https://code.visualstudio.com/)
- [IntellJ IDEA 安装地址](https://www.jetbrains.com/idea/)
- [Pycharm 安装地址](https://www.jetbrains.com/pycharm/)
- [GolLand 安装地址](https://www.jetbrains.com/go/download/#section=windows)
- [jetbrain Ide 大全安装地址](https://www.jetbrains.com/products/#type=ide)
- [jetbrain Toolbox](https://www.jetbrains.com/zh-cn/toolbox-app/)

## windows PowerShell 定制

### 使用 oh my posh 让我的 PowerShell 看起来更好看

1. 下载安装 [windows terminal](https://github.com/microsoft/terminal)

2. 下载安装 [PowerShell7](https://docs.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#winget)
3. 下载相应的模块

```powershell
# 安装oh-my-posh
Install-Module oh-my-posh -Scope CurrentUser -SkipPublisherCheck
Install-Module posh-git -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipP
# 安装文件图标库
Install-Module -Name Terminal-Icons -Repository PSGallery
```

将这些模块写入 PowerShell 配置中 (Microsoft.PowerShell_profile.ps1)文件

用 notepad 快速打开 PowerShell 配置文件

```sh
notepad.exe $PROFILE
```

用 neovim 快速打开 Powershell 配置文件

```sh
nvim $PROFILE
```

用 vscode 快速打开 Powershell 配置文件

```sh
code $PROFILE
```

在配置文件内导入模块

```sh
# 导入模块
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
```

在配置文件设置主题和 tab 补全

```sh
# 设置powershell主题
Set-PoshPrompt -Theme powerlevel10k_rainbow
# 设置能够记录历史命令进行补全
Set-PSReadLineOption -PredictionSource History
# 设置tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# alt在windows中有特殊用途，这里使用ctrl键代替
# 用ctrl + -> 来接受自动补全命令
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
```

#### 相关资料

[ohmyposh 文档](https://ohmyposh.dev/docs)

```powershell
# 导入PowerShell模块
Import-Module posh-git
Import-Module oh-my-posh
# 设置PowerShell主题
Set-PoshPrompt -Theme robbyrussel
```

### 如何在 windows 中取别名

在 linux 中我们取别名是在.bashrc 或者是.zshrc
使用 alias xxx="xxxxx"
在 windows 中就不一样了
windows 取别名示例

```powershell
# 设置powershell别名
function lg {C:\Users\9\scoop\apps\lazygit\0.33\lazygit.exe}
function s {neofetch}
function cl {clear}
function ll {ls -la}
function vim {nvim}
# git alias
function gs {git status -s}
function ga {git add $args}
function gz {git cz $args}
```

### 安装 scoop

#### 步骤一: 在 PowerShell 中打开远程权限

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser;
```

#### 步骤二: 自定义安装目录

```powershell
$env:SCOOP='Your_Scoop_Path'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

> 如果跳过该步骤， Scoop 将默认把所有用户安装的 App 和 Scoop 本身置于 C:\Users\user_name\scoop

#### 步骤三: 下载安装 scoop

```powershell
$ Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# 或者使用下面这条命令
$ iwr -useb get.scoop.sh | iex
```

**添加国内镜像(gitee):**

```powershell
iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex
scoop config SCOOP_REPO 'https://gitee.com/glsnames/Scoop-Core'
scoop update
```

### 安装 lazygit (scoop)

You can install `lazygit` using scoop. It's in the extras bucket:

```powershell
# Add the extras bucket
scoop bucket add extras

# Install lazygit
scoop install lazygit

# Install delta
scoop install delta

# Install grep
scoop install grep

# Install mingw
scoop install mingw

# Install neofetch
scoop install neofetch

# Install komorebi (windows 下的平铺桌面)
scoop bucket add komorebi https://github.com/LGUG2Z/komorebi-bucket
scoop install komorebi

# 安装windows的改建软件(autohotkey)
scoop install extras/autohotkey

# Install im-select
scoop bucket add im-select https://github.com/daipeihust/im-select
scoop install im-select

# Install fzf
scoop install fzf
```

### windows 下的窗口管理器(平铺窗口)[komorebi]

#### 启动

在 terminal 输入这个命令 `komorebic start`就可以启动这个软件

#### 停止

在 terminal 输入这个命令 `komorebic stop`就可以启动这个软件

#### 参考资料

[komorebi 中文文档](https://github.com/LGUG2Z/komorebi/wiki/README-zh)

### delta 配置

delta 配置文件在 **C:\Users\{UserName}\.gitconfig**
不知道为啥现在 lazygit 中 delta 没有效果，以后有效果再配置。

### ZLocation 的使用 (windows 上的 autojump)

#### 安装及导入模块

```sh
# 安装模块
Install-Module ZLocation -Scope CurrentUser
POWERS

# 导入模块
Import-Module ZLocation
```

#### 使用

**列出所有已知的位置**
`z` 没有参数的话,就会列出所有已知的位置以及他们的权重

`z -l des` 将会列出包含有 des 的位置,当然这看的是最后的路径而不是全部路径
例如:

> User/9/desktop/des
> User/9/desktop/abc

他只会列出第一个因为只看 des 和 abc

**使用 tab completion 导航到不太常见的目录**

需要先取消 tab 自动补全 我是取消了,windows 的自动补全实在是太差了,取消也没啥.哈哈

**返回上次位置**
命令 `z -`

#### 相关资料

- [lazygit 中文默认键位文档](git@github.com:74th/vscode-monokaicharcoal.git)
- [delta github](https://github.com/dandavison/delta)
- [delta 官方文档](https://dandavison.github.io/delta/introduction.html)
- [scoop 官方介绍](https://scoop.sh/)
- [scoop 知乎文章](https://zhuanlan.zhihu.com/p/128955118)
- [scoop github](https://github.com/ScoopInstaller/Scoop)
- [PowerShell 在线中文教程](https://www.pstips.net/powershell-online-tutorials)
- [ZLocation](https://github.com/vors/ZLocation)

#### lazygit 存放配置的位置

默认路径:
%APPDATA%\lazygit\config.yml

> 其中%APPDATA% 这个代表的路径 C:\Users\9\AppData\Roaming
> 完整路径 C:\Users\9\AppData\Roaming\lazygit\config.yml

[lazygit 官方配置文档](https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md)

## vscode 配置

vscode 是我最喜欢的编辑器之一,主要原因就是这个编译器打开速度快,而且插件多。

### 我最喜欢的主题

- vscode 默认主题
- Monokai Charcoal high contrast
- One dark pro
- github theme
- material theme

### vscode 配置 code 命令

加自己的 code.cmd 所在文件夹的位置加入 windows 的环境变量(系统变量)path 中:

> code.cmd 在的位置是 D:\vscode\Microsoft VS Code\bin\code.cmd
> D:\vscode\Microsoft VS Code\bin 加入环境变量(path)中

### vscode 参考配置以及资料:

- [VSpaceCode default keybindings](https://vspacecode.github.io/docs/default-keybindings)

- [vscode 自定义主题](https://code.visualstudio.com/docs/getstarted/themes#_customizing-a-color-theme)

- [vscode Extension API](https://code.visualstudio.com/api)

**我自己的配置通过 git 同步**

## Intelij IDEA 配置

**idea 配置**我同步了,所以不怎么需要描写
