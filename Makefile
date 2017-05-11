all: atom-config bash-config

atom-config:
	wget https://atom.io/download/deb?channel=beta -O /tmp/atom-amd64.deb
	sudo dpkg -i /tmp/atom-amd64.deb
	rm /tmp/atom-amd64.deb
	cp -r ${PWD}/atom/* ~/.atom/
	apm install --packages-file ~/.atom/my_packages.txt

bash-config:
	cp -r ${PWD}/bash/aliases/ ${THEFORK_WORKSPACE}
	cp ${PWD}/bash/.host_bashrc ${THEFORK_WORKSPACE}/.host_bashrc
	cp ${PWD}/bash/.vm_bashrc ${THEFORK_WORKSPACE}/.vm_bashrc
	sudo dpkg-reconfigure dash
	. ${THEFORK_WORKSPACE}/.host_bashrc
	echo "source ${THEFORK_WORKSPACE}/.host_bashrc" >> ~/.bashrc
