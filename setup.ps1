Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

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

git config --global user.email "staudinger.timo@gmail.com"
git config --global user.name "Timo Staudinger"

npm install -g yarn
