# Set Windows ENVs
# - HTTP_PROXY
# - HTTPS_PROXY
# - NO_PROXY

# Set up Chocolatey for package management
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

# Install applications (general)
choco install googlechrome -y
choco install firefox -y
choco install brave -y
choco install adobereader -y
choco install 7zip -y
choco install vlc -y
choco install 1password -y
choco install lightshot -y
choco install screentogif -y
choco install slack -y
choco install spotify -y

# Install applications (development)
choco install vcbuildtools -y
choco install openjdk -y
choco install python2 -y
choco install vscode -y
choco install notepadplusplus -y
choco install nvm -y
choco install yarn -y
choco install git -y
choco install poshgit -y
choco install inkscape -y
choco install visioviewer -y
choco install camunda-modeler -y
choco install microsoft-windows-terminal -y
choco install dbeaver -y
choco install dotnetcore-sdk -y

# Install applications (others)
choco install google-backup-and-sync -y
choco install nordvpn -y
choco install discord -y
choco install steam -y
choco install uplay -y
choco install epicgameslauncher -y
choco install geforce-experience -y

# Install non-Chocolatey software
# - Adobe Creative Cloud

# Install fonts
# - Dank Mono (https://dank.sh/releases/)

refreshenv

# Set global Git config
# - Copy .gitconfig to ~/
# - Maintain email address
git config --global user.email "foo@bar.com"
git config --global user.name "Timo Staudinger"
New-Item C:\git -type directory

# TODO: Copy yarn & npm config

# Set up Node.js
# - Configure proxy: nvm proxy ip:port
nvm install 12.18.3
nvm use 12.18.3

refreshenv

# Install Python packages
pip install --upgrade pip setuptools
pip install --upgrade httpie

# Enable VS Code settings sync

# Activate Windows Subsystem for Linux
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# Reboot
wsl --set-default-version 2
# Install Ubuntu from Windows Store

# Set up PowerShell
# - Clone psaliases
# - Copy profile
