.PHONY : all up clean
all: ~/.vim/syntax/python.vim ~/.vim/syntax/nerdtree.vim

~/.vim/syntax/python.vim: python.vim
	install -C -m 400 python.vim ~/.vim/syntax/python.vim

~/.vim/syntax/nerdtree.vim: nerdtree.vim
	install -C -m 400 nerdtree.vim ~/.vim/syntax/nerdtree.vim

clean:
	@echo "cleaning vim syntax"

