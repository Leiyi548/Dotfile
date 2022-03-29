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

```powershell

# Install mingw
scoop install mingw

# Install komorebi (windows 下的平铺桌面)
scoop bucket add komorebi https://github.com/LGUG2Z/komorebi-bucket
scoop install komorebi

# 安装windows的改建软件(autohotkey)
scoop install extras/autohotkey

# Install im-select
scoop bucket add im-select https://github.com/daipeihust/im-select
scoop install im-select

# Install python
# This command will install python2 and newest python3
scoop install python
```

### windows 下的窗口管理器(平铺窗口)

#### 启动

在 terminal 输入这个命令 `komorebic start`就可以启动这个软件

#### 停止

在 terminal 输入这个命令 `komorebic stop`就可以启动这个软件

#### 参考资料

- [komorebi 中文文档](https://github.com/LGUG2Z/komorebi/wiki/README-zh)
- [PowerShell 在线中文教程](https://www.pstips.net/powershell-online-tutorials)
