# 配置我的 windows (Oh My Windows)

## 我平时需要用的软件安装地址

- [vscode 安装地址](https://code.visualstudio.com/)
- [IntellJ IDEA 安装地址](https://www.jetbrains.com/idea/)
- [Pycharm 安装地址](https://www.jetbrains.com/pycharm/)
- [jetbrain Ide 大全安装地址](https://www.jetbrains.com/products/#type=ide)

## windows powershell 定制

### 使用 oh my posh 让我的 powershell 看起来更好看

1. 下载安装 [windows terminal](https://github.com/microsoft/terminal)

2. 下载安装 [powershell7](https://docs.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#winget)
3. 下载相应的模块

```powershell
# 安装oh-my-posh
Install-Module oh-my-posh -Scope CurrentUser -SkipPublisherCheck
Install-Module posh-git -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipP
# 安装文件图标库
Install-Module -Name Terminal-Icons -Repository PSGallery
```

将这些模块写入 powershell 配置中 (Microsoft.PowerShell_profile.ps1)文件

用 notepad 快速打开 powershell 配置文件

```powershell
notepad.exe $PROFILE
```

在配置文件内导入模块

```powershell
# 导入模块
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
```

在配置文件设置主题和 tab 补全

```powershell
# 设置powershell主题
Set-PoshPrompt -Theme powerlevel10k_rainbow
# 设置tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
```

#### 相关资料

[ohmyposh 文档](https://ohmyposh.dev/docs)

```powershell
# 导入powershell模块
Import-Module posh-git
Import-Module oh-my-posh
# 设置powershell主题
Set-PoshPrompt -Theme robbyrussel
```

### 如何在 windows 中取别名

在 linux 中我们取别名是在.bashrc 或者是.zshrc
使用 alias xxx="xxxxx"
在 windows 中就不一样了
windows 取别名示例

```powershell
function lg {C:\Users\9\scoop\apps\lazygit\0.33\lazygit.exe}
function cl {clear}
function ll {ls -la}
```

### 安装 scoop

用命令安装 scoop

```powershell
$ Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# 或者使用下面这条命令
$ iwr -useb get.scoop.sh | iex
```

### 安装 lazygit (scoop)

You can install `lazygit` using scoop. It's in the extras bucket:

```powershell
# Add the extras bucket
scoop bucket add extras

# Install lazygit
scoop install lazygit
```

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

### vscode 参考配置以及资料:

- [VSpaceCode default keybindings](https://vspacecode.github.io/docs/default-keybindings)

- [vscode 自定义主题](https://code.visualstudio.com/docs/getstarted/themes#_customizing-a-color-theme)

- [vscode Extension API](https://code.visualstudio.com/api)

**我自己的配置通过 git 同步**

## Intelij IDEA 配置

**idea 配置**我同步了,所以不怎么需要描写
