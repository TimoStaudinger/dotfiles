Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install vcbuildtools -y
choco install python -version 2.7.2 -y
choco install jdk8 -y
choco install atom -y
choco install notepadplusplus -y
choco install googlechrome -y
choco install nodist -y
choco install skype -y
choco install git -y
choco install adobereader -y
choco install 7zip -y
choco install vlc -y
choco install dropbox -y
choco install gimp -y
choco install greenshot -y
choco install googledrive -y
choco install spotify -y
choco install intellijidea-ultimate -y

refreshenv

git config --global user.email "staudinger.timo@gmail.com"
git config --global user.name "Timo Staudinger"

npm install -g react-native
