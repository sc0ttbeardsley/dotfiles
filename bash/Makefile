.PHONY : all up clean
all: ~/.bash/functions
	@cd functions; $(MAKE)

~/.bash/functions: functions
	@install -d -m 700 ~/.bash/functions

clean:
	@echo "cleaning bash"

