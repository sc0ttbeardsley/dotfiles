DOTFILES_DIR=~/src/dotfiles

.PHONY : all downloads install

all: downloads install

downloads: .downloads/vim_nerdtree.zip vim/syntax/python.vim

.downloads/vim_nerdtree.zip:
	@curl 'http://www.vim.org/scripts/download_script.php?src_id=17123' -o .downloads/vim_nerdtree.zip 2>/dev/null
	cd vim && unzip ../.downloads/vim_nerdtree.zip

vim/syntax/python.vim:
	@curl 'https://github.com/hdima/vim-scripts/blob/master/syntax/python/python.vim' -o vim/syntax/python.vim 2>/dev/null

install: downloads .install_dotfiles
	@./.install_dotfiles $(DOTFILES_DIR)

clean:
	@rm -rf .downloads/vim_nerdtree.zip vim/nerdtree_plugin vim/doc/NERD_tree.txt vim/plugin/NERD_tree.vim vim/syntax/nerdtree.vim
	@rm -rf vim/syntax/python.vim

