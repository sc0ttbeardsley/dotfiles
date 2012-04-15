DOTFILES_DIR=~/src/dotfiles

.PHONY : all up clean

all: ~/.bashrc ~/.bash
	@cd bash; $(MAKE)

~/.bashrc: bashrc
	install -C -m 755 bashrc ~/.bashrc

~/.bash: bash
	@install -d -m 700 ~/.bash

up:
	@install -d -m 700 ~/src
	@mkdir ~/src
	@cd ~/src && git pull git@github.com:sc0ttbeardsley/dotfiles.git

clean:
	echo "cleaning dotfiles"
	cd bash; $(MAKE) clean

