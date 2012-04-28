.PHONY : all up clean
all: ~/.vim/syntax ~/.vim/doc ~/.vim/plugin ~/.vim/nerdtree_plugin nt.zip
	@cd syntax; $(MAKE)
	@cd plugin; $(MAKE)
	@cd doc; $(MAKE)

nt.zip:
	@curl 'http://www.vim.org/scripts/download_script.php?src_id=17123' -o nt.zip 2>/dev/null
	@unzip nt.zip

~/.vim/nerdtree_plugin: nt.zip
	@install -d -m 700 ~/.vim/nerdtree_plugin
	install -m 400 nerdtree_plugin/fs_menu.vim ~/.vim/nerdtree_plugin/fs_menu.vim
	install -m 400 nerdtree_plugin/exec_menuitem.vim ~/.vim/nerdtree_plugin/exec_menuitem.vim

~/.vim/plugin: plugin
	@install -d -m 700 ~/.vim/plugin

~/.vim/doc: doc
	@install -d -m 700 ~/.vim/doc

~/.vim/syntax: syntax
	@install -d -m 700 ~/.vim/syntax

clean:
	@echo "cleaning vim"

