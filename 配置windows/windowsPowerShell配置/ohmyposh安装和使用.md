# ohmyposh 安装和使用

## Install

```powershell
Install-Module oh-my-posh -Scope CurrentUser -SkipPublisherCheck
Install-Module posh-git -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipP
# 安装文件图标库
Install-Module -Name Terminal-Icons -Repository PSGallery
```

将这些模块写入 PowerShell 配置中 (Microsoft.PowerShell_profile.ps1)文件

用 notepad 快速打开 PowerShell 配置文件

```powershell
notepad.exe $PROFILE
```

用 neovim 快速打开 Powershell 配置文件

```powershell
nvim $PROFILE
```

用 vscode 快速打开 Powershell 配置文件

```powershell
code $PROFILE
```

在配置文件内导入模块

```powershell
# 导入模块
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
```

在配置文件设置主题和 tab 补全

```powershell
# 设置powershell主题
Set-PoshPrompt -Theme powerlevel10k_rainbow
# 设置能够记录历史命令进行补全
Set-PSReadLineOption -PredictionSource History
# 设置tab自动补全(fzf)
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
```

## Reference

[ohmyposh 文档](https://ohmyposh.dev/docs)
