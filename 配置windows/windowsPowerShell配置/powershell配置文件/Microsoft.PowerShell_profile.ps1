# git
Import-Module posh-git
Import-Module oh-my-posh
# add terminal icon
Import-Module -Name Terminal-Icons
# similar zsh-auto-suggestion
Import-Module PSReadLine
# similar autojump
Import-Module ZLocation; Add-Content -Value "`r`n`r`nImport-Module ZLocation`r`n" -Encoding utf8 -Path $PROFILE.CurrentUserAllHosts

# 设置powershell主题
# Set-PoshPrompt -Theme powerlevel10k_rainbow
# Set-PoshPrompt -Theme clean-detailed
Set-PoshPrompt -Theme powerlevel10k_modern

# 设置能够记录历史命令进行补全
Set-PSReadLineOption -PredictionSource History
# 设置tab自动补全(fzf)
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# alt在windows中有特殊用途，这里使用ctrl键代替 
# 用ctrl + -> 来接受自动补全命令
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord


Set-Alias -Name vim -Value nvim
Set-Alias lg lazygit
Set-Alias s neofetch
Set-Alias cl clear
Set-Alias open explorer


# git alias
function gs {git status -s}
function ga {git add $args}
function gz {git cz $args}

# fzf
# more information please visit 
#https://github.com/kelleyma49/PSFzf/blob/master/docs/Set-PsFzfOption.md
Import-Module PSFzf
Set-PsFzfOption -TabExpansion
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadlineChordReversehistory 'Ctrl+r'
Set-PsFzfOption -EnableAliasFuzzyEdit
Set-PsFzfOption -EnableAliasFuzzyHistory
Set-PsFzfOption -EnableAliasFuzzyKillProcess
Set-PsFzfOption -EnableAliasFuzzyZLocation
Set-PsFzfOption -EnableAliasFuzzyKillProcess
Set-PsFzfOption -EnableAliasFuzzyGitStatus
$env:FZF_DEFAULT_OPTS="--layout=reverse --border --height 50% --info=inline  --prompt ' ' --color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672"

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}