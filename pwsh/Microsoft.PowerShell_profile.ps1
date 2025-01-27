#Initializes Oh-My-Posh
oh-my-posh init pwsh --config https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/jblab_2021.omp.json | Invoke-Expression

#PSReadline Config
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionSource History 
Set-PSReadLineOption -PredictionViewStyle ListView

# Alias: yazi = y
function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath $cwd
    }
    Remove-Item -Path $tmp
}

# Defines nvim config to be in .config
$env:XDG_CONFIG_HOME = "$HOME/.config"

# Alias: nvim = vim
Set-Alias vim nvim
Set-Alias ff fasfetch


#Clears Terminal
Clear-Host
