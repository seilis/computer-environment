###############################################################################
# Simple Makefile for installing configuration files
###############################################################################

# Tools to use
CP?=cp

###############################################################################
# Project variables
###############################################################################
CONFIG=config
BACKUP=.backup

###############################################################################
# Top-level targets
###############################################################################
.PHONY : all vim install zsh

all:
	@echo "You probably don't want to use this Makefile since it will"
	@echo "replace your configuration with the one stored in this repository."
	@echo "If you're absolutely sure, run 'make install'"

install: vim zsh

vim: ${CONFIG}/.vimrc
	${CP} ${HOME}/.vimrc ${HOME}/.vimrc${BACKUP}
	${CP} ${CONFIG}/.vimrc ${HOME}/.vimrc

zsh: ${CONFIG}/.zshrc
	${CP} ${HOME}/.zshrc ${HOME}/.zshrc${BACKUP}
	${CP} ${CONFIG}/.zshrc ${HOME}/.zshrc
