# Set Windows ENVs if required
# - HTTP_PROXY
# - HTTPS_PROXY
# - NO_PROXY

# Install applications: general
# =============================
winget install -e --id Microsoft.PowerToys
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id AgileBits.1Password
winget install -e --id Google.Chrome
winget install -e --id Mozilla.Firefox
winget install -e --id Adobe.AdobeAcrobatReaderDC
winget install -e --id 7zip.7zip
winget install -e --id VideoLAN.VLC
winget install -e --id Spotify.Spotify
winget install -e --id TranslucentTB.TranslucentTB
winget install -e --id TechSmith.Snagit

# Install fonts
# - Dank Mono (https://dank.sh/releases/)

# [optional]
winget install -e --id Google.BackupAndSync
winget install -e --id NordVPN.NordVPN
winget install -e --id ParsecCloudInc.Parsec

# Install applications: creative
# ==============================
winget install -e --id Microsoft.VisualStudio.2019.BuildTools
winget install -e --id AdoptOpenJDK.OpenJDK
winget install -e --id Python.Python
winget install -e --id OpenJS.Nodejs
winget install -e --id Yarn.Yarn
winget install -e --id Git.Git
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Notepad++.Notepad++
winget install -e --id Inkscape.Inkscape
winget install -e --id dbeaver.dbeaver

# Install manually
# - poshgit
# - Adobe creative cloud

# [optional]
# Install manually
# - camunda-modeler

# Install applications: entertainment
# ===================================
winget install -e --id Discord.Discord
winget install -e --id Blizzard.BattleNet
winget install -e --id Valve.Steam
winget install -e --id Ubisoft.Connect
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id ParsecCloudInc.Parsec

# [optional]
winget install -e --id Nvidia.GeForceExperience

# Configuration
# =============

refreshenv

# Set global Git config
# - Copy .gitconfig to ~/
# - Maintain email address
git config --global user.email "foo@bar.com"
git config --global user.name "Timo Staudinger"
New-Item C:\git -type directory

# TODO: Copy yarn & npm config

refreshenv

# Install Python packages
pip install --upgrade pip setuptools
pip install --upgrade httpie

# Enable VS Code settings sync

# Set up PowerShell
# - Clone psaliases
# - Copy profile

# Configure Windows
# - Show hidden files
# - Show file extensions

# Activate Windows Subsystem for Linux
# ====================================

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Reboot

wsl --set-default-version 2
# If setting the wsl version to 2 fails, install the wsl2 kernel by hand, and retry:
# https://docs.microsoft.com/en-us/windows/wsl/wsl2-kernel

winget install -e --id Canonical.Ubuntu
