.PHONY : all up clean
all: ~/.vim/syntax
	@cd syntax; $(MAKE)

~/.vim/syntax: syntax
	@install -d -m 700 ~/.vim/syntax

clean:
	@echo "cleaning vim"

