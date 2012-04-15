DOTFILES_DIR=~/src/dotfiles

.PHONY : all up clean

all: ~/.bashrc ~/.bash ~/.gitconfig ~/.synergy.conf ~/.screenrc ~/.vimrc
	@cd bash; $(MAKE)
	@cd irssi; $(MAKE)
	@cd vim; $(MAKE)

~/.bash: bash
	@install -d -m 700 ~/.bash
~/.irssi: irssi
	@install -d -m 700 ~/.irssi
~/.vim: vim
	@install -d -m 700 ~/.vim

~/.bashrc: bashrc
	install -C -m 755 bashrc ~/.bashrc
~/.gitconfig: gitconfig
	install -C -m 400 gitconfig ~/.gitconfig
~/.synergy.conf: synergy.conf
	install -C -m 400 synergy.conf ~/.synergy.conf
~/.screenrc: screenrc
	install -C -m 400 screenrc ~/.screenrc
~/.vimrc: vimrc
	install -C -m 400 vimrc ~/.vimrc

up:
	@install -d -m 700 ~/src
	@mkdir ~/src
	@cd ~/src && git pull git@github.com:sc0ttbeardsley/dotfiles.git

clean:
	echo "cleaning dotfiles"
	cd bash; $(MAKE) clean

