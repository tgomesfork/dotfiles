all: bash-config
bash-config:
	cp -r ${PWD}/bash/aliases/ ${THEFORK_WORKSPACE}
	cp ${PWD}/bash/.host_bashrc ${THEFORK_WORKSPACE}/.host_bashrc
	cp ${PWD}/bash/.vm_bashrc ${THEFORK_WORKSPACE}/.vm_bashrc
	sudo dpkg-reconfigure dash
	. ${THEFORK_WORKSPACE}/.host_bashrc
	echo "source ${THEFORK_WORKSPACE}/.host_bashrc" >> ~/.bashrc
