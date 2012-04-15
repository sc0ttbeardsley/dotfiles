.PHONY : all up clean
all: ~/.vim/syntax/python.vim

~/.vim/syntax/python.vim: python.vim
	install -C -m 400 python.vim ~/.vim/syntax/python.vim

python.vim:
	# see also http://www.vim.org/scripts/script.php?script_id=790
	curl 'http://www.vim.org/scripts/download_script.php?src_id=17429' >python.vim

clean:
	@echo "cleaning vim syntax"

