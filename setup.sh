#!/bin/bash
if [ `whoami` = "root" ];then
	echo '185.199.111.133  raw.githubusercontent.com' >> /etc/hosts
	apt-get update -y
	apt-get install python3 -y
	apt-get install python3-pip -y
	apt-get install gcc -y
	apt-get install git -y
	apt-get install gem -y
	apt-get install ruby -y
	apt-get install libc6-dev-i386 -y
	# socat
	apt-get install socat -y
	apt-get install zsh -y
	apt-get install wget -y
	gem install one_gadget
	pip3 install pwntools
	cd 
	git clone https://github.com/inaz2/roputils.git
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" -y
	cd
  # 该主题会标识docker
	sed -i 's|robbyrussell|essembeh|' .zshrc
	source .zshrc
	cd
	git clone https://github.com/pwndbg/pwndbg.git
	cd pwndbg 
	./setup.sh
	# 如果安装pwndbg中途报错:
	# 修改setup.sh 删去 python-dev python-pip
	# pwndbg 使用报字符错误:
	# export LANG=C.UTF-8
	# pwndbg 使用报collections错误:
	# 修改 /pwndbg/pwndbg/memoize.py collections.attr => collections.abc.attr
else
	echo '185.199.111.133  raw.githubusercontent.com' >> /etc/hosts
	sudo apt-get update -y
	sudo apt-get install python3 -y
	sudo apt-get install python3-pip -y
	sudo apt-get install gcc -y
	sudo apt-get install gdb -y
	sudo apt-get install git -y
	sudo apt-get install zsh -y
	sudo apt-get install wget -y
	sudo apt-get install gem -y
	sudo apt-get install ruby -y
	sudo apt-get install libc6-dev-i386 -y
	# socat
	sudo apt-get install socat -y
	gem install one_gadget
	pip3 install pwntools
	cd 
	git clone https://github.com/inaz2/roputils.git
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" -y
	cd
	sed -i 's|robbyrussell|essembeh|' .zshrc
	source .zshrc
	cd
	git clone https://github.com/pwndbg/pwndbg.git
	cd pwndbg 
	./setup.sh
fi

