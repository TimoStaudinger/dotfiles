# A directory containing all alias files that should be loaded
$aliasesDir = "C:\psaliases\dist"

# Load all .ps1 files located in $aliasesDir
Get-ChildItem "${aliasesDir}\*.ps1" | % {.$_}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# load posh-git
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
