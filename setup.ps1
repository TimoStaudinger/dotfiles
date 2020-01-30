# Set up Chocolatey for package management
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

# Install Applications
choco install vcbuildtools -y
choco install javaruntime -y
choco install python2 -y
choco install vscode -y
choco install notepadplusplus -y
choco install googlechrome -y
choco install firefox -y
choco install brave -y
choco install nvm -y
choco install yarn -y
choco install git -y
choco install adobereader -y
choco install 7zip -y
choco install vlc -y
choco install gimp -y
choco install inkscape -y
choco install lightshot -y
choco install dashlane -y
choco install terminus -y
choco install googledrive -y
choco install nordvpn -y
choco install now -y
choco install screentogif -y
choco install dbeaver -y
choco install microsoft-windows-terminal -y
choco install poshgit -y
choco install visioviewer -y
choco install camunda-modeler -y

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
# TODO: Set VS Code proxy config
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension mariusschulz.yarn-lock-syntax
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naumovs.color-highlight
code --install-extension rafamel.subtle-brackets
code --install-extension shinnn.stylelint
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension wayou.vscode-todo-highlight

# Activate Windows Subsystem for Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# TODO: Install Microsoft store apps:
# - Spotify
# - Slack
# - Skype
