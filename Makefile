DOTFILES_DIR=~/src/dotfiles

.PHONY : all up clean

all: ~/.bashrc ~/.bash ~/.gitconfig ~/.gitignore ~/.synergy.conf ~/.screenrc ~/.vimrc ~/.NERDTreeBookmarks
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
	install -m 755 bashrc ~/.bashrc
~/.gitconfig: gitconfig
	install -m 400 gitconfig ~/.gitconfig
~/.gitignore: gitignore
	install -m 400 gitignore ~/.gitignore
~/.synergy.conf: synergy.conf
	install -m 400 synergy.conf ~/.synergy.conf
~/.screenrc: screenrc
	install -m 400 screenrc ~/.screenrc
~/.vimrc: vimrc
	install -m 400 vimrc ~/.vimrc
~/.NERDTreeBookmarks: NERDTreeBookmarks
	install -m 644 NERDTreeBookmarks ~/.NERDTreeBookmarks

up:
	@install -d -m 700 ~/src
	@mkdir ~/src
	@cd ~/src && git pull git@github.com:sc0ttbeardsley/dotfiles.git

clean:
	echo "cleaning dotfiles"
	cd bash; $(MAKE) clean

