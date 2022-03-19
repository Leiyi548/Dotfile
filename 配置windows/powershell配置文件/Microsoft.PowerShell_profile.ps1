# 导入模块
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons

# 设置powershell主题
Set-PoshPrompt -Theme powerlevel10k_rainbow
# 设置tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# 设置powershell别名
function lg {C:\Users\9\scoop\apps\lazygit\0.33\lazygit.exe}
function cl {clear}
function ll {ls -la}
function vim {nvim}
# git alias
function gs {git status -s}
function gp {git push}
function gP {git pull}
function ga {git add $args}