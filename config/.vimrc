"------------------------------------------------------------------------------
" File: .vimrc
" Author: Aaron Seilis <Aaron.Seilis@seilis.ca>
" License: Copyright (c) 2016 Aaron Seilis. Please see LICENSE for details.
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Essential Configuration
"------------------------------------------------------------------------------

" Enable all Vim stuff
set nocompatible

" Set UTF-8 as the default encoding, even on systems where it is not default.
set encoding=utf-8

" Set UNIX as the standard line-ending type (Line-feed)
set ffs=unix

" Set the leader characters
let mapleader = "-"
let maplocalleader = "\\"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"
" This section configures the general behaviour of Vim.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Number of lines in the history
set history=1024

" Allow for file type-specific behaviour.
filetype plugin on

" Set a central backup directory (prevents *.swp files from going everywhere).
set backupdir=~/.vim/backup/,/tmp

" Delete key behavior
set backspace=eol,start

" Enable syntax-related configurations
syntax on

"-------------------------------------------------------------------------------
" GUI-specific options
"-------------------------------------------------------------------------------
if has("gui_running")
	set lines=40 columns=95
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colourscheme
" Allow full 256 colours in terminal.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme murphy

