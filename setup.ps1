# Set up Chocolatey for package management
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

# Install Applications
choco install vcbuildtools
choco install python -version 2.x
choco install jdk8
choco install vscode
choco install notepadplusplus
choco install googlechrome
choco install nvm
# choco install skype
choco install git
choco install adobereader
choco install 7zip
choco install vlc
# choco install dropbox
choco install gimp
choco install inkscape
choco install greenshot
# choco install googledrive
# choco install spotify
choco install dashlane
# choco install nordvpn
choco install hyper

refreshenv

# Set global Git config
git config --global user.email "staudinger.timo@gmail.com"
git config --global user.name "Timo Staudinger"

# Install global npm packages
npm install -g yarn

# Install VS Code Extensions
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.vscode-npm-script
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.PowerShell
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naumovs.color-highlight
code --install-extension pnp.polacode
code --install-extension rafamel.subtle-brackets
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension wayou.vscode-todo-highlight
