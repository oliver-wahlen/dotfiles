#!/bin/bash

#directory where dotfiles are placed
DOTFILE_DIR=~/dotfiles

#makes an array of the relevant files
declare -a FILES=("bashrc" "vimrc" "gitconfig")

#force create symbolic links (use of curly brackets because of "advance" formating)
for FILE in "${FILES[@]}"; do
	ln -sf "${DOTFILE_DIR}/.${FILE}" "${HOME}/.${FILE}"
	echo "Linked ${DOTFILE_DIR}/.${FILE}" "${HOME}/.${FILE}"
done

echo "Dotfiles linked"
