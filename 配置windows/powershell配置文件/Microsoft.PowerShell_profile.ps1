# 导入模块
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Import-Module PSReadLine


# 设置powershell主题
Set-PoshPrompt -Theme powerlevel10k_rainbow
# 设置能够记录历史命令进行补全
Set-PSReadLineOption -PredictionSource History
# 设置tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# alt在windows中有特殊用途，这里使用ctrl键代替 
# 用ctrl + -> 来接受自动补全命令
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord

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