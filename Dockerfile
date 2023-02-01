FROM katalonstudio/katalon

version=$(curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE")
wget -qP /tmp/ "https://chromedriver.storage.googleapis.com/${version}/chromedriver_linux64.zip"
sudo unzip -o /tmp/chromedriver_linux64.zip -d /usr/bin
sudo chmod 755 /usr/bin/chromedriver
sudo apt-get update
sudo apt-get --only-upgrade install google-chrome-stable