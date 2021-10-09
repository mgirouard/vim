.PHONY: all clean install uninstall

# assume ~/.vimrc is where we want things by default but still make it
# configurable should it ever be needed
PREFIX ?= $(HOME)

# default target
# to force a build, do `make clean all`
all: .vimrc

# clean up the generated config
clean:
	$(RM) .vimrc

# install the generated config
install: .vimrc
	install \
		--mode=664 \
		--preserve-timestamps \
		.vimrc $(PREFIX)

# uninstall the generated config
uninstall:
	rm $(PREFIX)/.vimrc

# build a new .vimrc config from the sources
# order matters in some cases because of things like `nocompatible`
# language-specific stuff (or anything in an augroup) shouldn't matter much.
.vimrc: $(shell find ./vim -name '*.vim')
	echo > $@
	cat vim/defaults.vim >> $@
	cat vim/colors.vim >> $@
	cat vim/behavior.vim >> $@
	cat vim/mappings.vim >> $@
	cat vim/git.vim >> $@
	cat vim/go.vim >> $@
	cat vim/make.vim >> $@
	cat vim/markdown.vim >> $@
	cat vim/php.vim >> $@
	cat vim/vim.vim >> $@
	cat vim/yaml.vim >> $@
