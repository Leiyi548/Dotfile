Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Set-PoshPrompt -Theme powerlevel10k_rainbow
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

function lg {C:\Users\9\scoop\apps\lazygit\0.33\lazygit.exe}
function cl {clear}
function ll {ls -la}