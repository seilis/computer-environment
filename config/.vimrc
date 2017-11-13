"------------------------------------------------------------------------------
" File: .vimrc
" Author: Aaron Seilis <Aaron.Seilis@seilis.ca>
" License: Copyright (c) 2016-2017 Aaron Seilis. Please see LICENSE for details.
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
filetype plugin indent on

" Set a central backup directory (prevents *.swp files from going everywhere).
set backupdir=~/.vim/backup/,/tmp

" Delete key behavior
set backspace=eol,start

" Enable syntax-related configurations
syntax on

set backspace=indent,eol,start

"-------------------------------------------------------------------------------
" GUI-specific options
"-------------------------------------------------------------------------------
if has("gui_running")
	set lines=40 columns=95
	set guioptions-=T
endif

"-------------------------------------------------------------------------------
" Indentation
"-------------------------------------------------------------------------------
" I'm a tab=4-spaces kind of guy. Since I program in Python a lot, this
" matches with recommendations from PEP-8.
set tabstop=4
set shiftwidth=4
set softtabstop=4

"-------------------------------------------------------------------------------
" Visual editing
"-------------------------------------------------------------------------------
set relativenumber
set number
set hlsearch

"-------------------------------------------------------------------------------
" Visual editing
"-------------------------------------------------------------------------------
" Generally, I edit code so I don't want wrapping enabled by default. However,
" some plain-text-like formats look better with wrapping.
set nowrap
augroup wrapping
	autocmd!
	autocmd FileType plaintex set wrap
	autocmd FileType text set wrap
	autocmd FileType markdown set wrap
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colourscheme
" Allow full 256 colours in terminal.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme solarized
