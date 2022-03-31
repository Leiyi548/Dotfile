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


# Install im-select
scoop bucket add im-select https://github.com/daipeihust/im-select
scoop install im-select

# Install python
# This command will install python2 and newest python3
scoop install python
```

#### 参考资料

- [PowerShell 在线中文教程](https://www.pstips.net/powershell-online-tutorials)
