#!/usr/bin/env bash

# Create user bin folder
mkdir -p $HOME/bin


# loop through directories and run stow
for i in $(ls -d */); 
	do stow ${i%%/}; 
done
