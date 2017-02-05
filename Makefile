.PHONY: install install-powerline

install: install-powerline

install-powerline:
	sudo pip install git+git://github.com/Lokaltog/powerline

install-vim:
	sudo add-apt-repository ppa:jonathonf/vim
	sudo apt update
	sudo apt install vim vim-common vim-gtk vim-gtk-py2 vim-gui-common vim-runtime vim-tiny

install-command-t:
	sudo apt-get install ruby-dev
	(cd ~/.vim/bundle/command-t/ruby/command-t;ruby extconf.rb;make)

install-packages:
	vim -c "VundleInstall" -c "qa!"
