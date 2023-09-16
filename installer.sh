echo "Preparing to install preset software list"

sudo apt update

echo "Proceed with installation? (Y/N)"

read input

if [ $input == "Y"}
	echo "Proceeding with installation"

	echo "Installing Python"
	sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
	wget https://www.python.org/ftp/python/3.10.12/Python-3.10.12.tgz
	tar -xf Python-3.10.*.tgz
	make -j $(nproc)
	sudo make altinstall
	pip3.10 install --user --upgrade pip
	sudo pip3.10 install beautifulsoup4
	echo "Python Installed"

	
	echo "Installing Docker"
	for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
	# Add Docker's official GPG key:
	sudo apt-get update
	sudo apt-get install ca-certificates curl gnupg
	sudo install -m 0755 -d /etc/apt/keyrings
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
	sudo chmod a+r /etc/apt/keyrings/docker.gpg

	# Add the repository to Apt sources:
	echo \
  	"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] 	https://download.docker.com/linux/debian \
  	$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  	sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo docker run hello-world
	echo "Docker Installed"

	echo "Installing VSCodium"
	sudo apt install snapd
	snap install codium --classic
	echo "Installed VSCodium"

	echo "Installing Insomnia"
	sudo snap install insomnia
	echo "Installed Insomnia"

	echo "Installing Inteliji Ultimate"
	sudo snap install intellij-idea-ultimate --classic
	echo "Installed Pycharm"

	echo "Installing Pycharm"
	sudo snap install pycharm-community --classic
	echo "Installed Pycharm"

	echo "Installing Balena Etcher"
	sudo apt install ./balena-etcher_******_amd64.deb
	echo "Installed "Balena Etcher"

	echo "Installing Virtual Box"
	wget -O- -q https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmour -o /usr/share/keyrings/oracle_vbox_2016.gpg
	echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle_vbox_2016.gpg] http://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
	sudo apt update
	sudo apt install virtualbox-7.0
	wget https://download.virtualbox.org/virtualbox/7.0.6/Oracle_VM_VirtualBox_Extension_Pack-7.0.6.vbox-extpack
	sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.6.vbox-extpack
	echo "Installed Virtual Box"

	echo "Installing Discord"
	sudo snap install discord
	echo "Discord Installed"

	echo "Installing Brave Browser"
	sudo apt install curl
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update
	sudo apt install brave-browser
	echo "Brave Browser Installed"

	echo "Installing Ghidra"
	sudo apt install ghidra
	echo "Ghidra installed"

	echo "Installing FireFox"
	sudo apt install firefox-esr
	echo "Firefox Installed"


else
	echo "Nothing has been downloaded"
	echo "How lame"


	


	