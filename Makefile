DEST_DIR=$(shell git --exec-path) 

all:
	cp git-dirs2repos $(DEST_DIR)
