# C:\Users\79481\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# vim $PROFILE
# . $PROFILE

# 覆盖默认prompt函数
function Prompt
{
 "("+$env:CONDA_DEFAULT_ENV + ")" + $env:USERNAME+ ":" + (Get-Location) + "> "
 # (base)79481:C:\Users\79481>
}

# powershell初始化加载 PSReadLine 模块
Import-Module PSReadLine

# 使用历史记录进行脚本提示
Set-PSReadLineOption -PredictionSource History

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# c-o 补全
Set-PSReadLineKeyHandler -Chord "Ctrl+o" -Function ForwardWord