#!/bin/bash

# files in config/
for dir in `ls config`; do
	cp -R "config/" "$HOME/.config/${dir}/"
done

# files in $HOME
for file in `ls -p | grep -Ev '/$' | grep -Ev '.*\..*'`; do
	cp "$file" "$HOME/.$file" 
done
