# Set Windows ENVs
# - HTTP_PROXY
# - HTTPS_PROXY
# - NO_PROXY

# Set up Chocolatey for package management
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

# Install applications (general)
choco install terminus -y
choco install googlechrome -y
choco install firefox -y
choco install brave -y
choco install adobereader -y
choco install 7zip -y
choco install vlc -y
choco install dashlane -y
choco install lightshot -y
choco install screentogif -y
choco install slack -y
choco install spotify -y

# Install applications (work)
choco install vcbuildtools -y
choco install javaruntime -y
choco install python2 -y
choco install vscode -y
choco install notepadplusplus -y
choco install nvm -y
choco install yarn -y
choco install git -y
choco install poshgit -y
choco install now -y
choco install gimp -y
choco install inkscape -y
choco install visioviewer -y
choco install camunda-modeler -y
choco install microsoft-windows-terminal -y
choco install dbeaver -y
choco install dotnetcore-sdk -y

# Install applications (personal)
choco install googledrive -y
choco install nordvpn -y

# Install non chocolatey apps
# - Skype
# - Steam
# - Epic Store
# - Uplay

# Install Microsoft store apps:
# - Skype

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
# TODO: Copy VS Code config

# Set up Node.js
# - Configure proxy: nvm proxy ip:port
nvm install 8.15.0
nvm use 8.15.0

refreshenv

# Install Python packages
pip install --upgrade pip setuptools
pip install --upgrade httpie

# Install VS Code Extensions
# - Set VS Code proxy config
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension mariusschulz.yarn-lock-syntax
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-vscode.powershell
code --install-extension naumovs.color-highlight
code --install-extension rafamel.subtle-brackets
code --install-extension shinnn.stylelint
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension wayou.vscode-todo-highlight
code --install-extension sohibe.java-generate-setters-getters
code --install-extension vscjava.vscode-java-pack
code --install-extension adpyke.vscode-sql-formatter
code --install-extension redhat.vscode-xml

# Activate Windows Subsystem for Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Set up PowerShell
# - Clone psaliases
# - Copy profile
