# A directory containing all alias files that should be loaded
$aliasesDir = "C:\psaliases\dist"

# Load all .ps1 files located in $aliasesDir
Get-ChildItem "${aliasesDir}\*.ps1" | % {.$_}

# load posh-git
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
