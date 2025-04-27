#! /bin/bash


#use source to make script persist
#use to make .bashrc run this script from this dir when user logs in: echo "source ~/current_dir/scripts.sh" >> ~/.bashrc  

mcd () {
	# -p flag to ensure nested structure correctly
	mkdir -p "$1"
	cd "$1"
}
