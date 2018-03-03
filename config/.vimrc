"------------------------------------------------------------------------------
" File: .vimrc
" Author: Aaron Seilis <Aaron.Seilis@seilis.ca>
" License: Copyright (c) 2016-2018 Aaron Seilis. Please see LICENSE for details.
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

" Delete key behaviour
set backspace=indent,eol,start

" Enable syntax-related configurations
syntax on

" Always remove trailing whitespace. In theory, this might mess up some file
" where trailing whitespace is important... but I'm not aware of a concrete
" example.
augroup whitespace
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

"-------------------------------------------------------------------------------
" Spell checking
"-------------------------------------------------------------------------------
set spell spelllang=en_ca

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
augroup tabwidth
    autocmd!
    " YANG seems to be customarily written with indentation of 2.
    autocmd FileType yang set tabstop=2 shiftwidth=2 softtabstop=2
augroup END

" Pretty much always expand tabs
set expandtab
augroup expandtab
    autocmd!
    " It's a syntax error to expand tabs in Makefiles
    autocmd FileType make set noexpandtab
augroup END


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
