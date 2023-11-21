#!/bin/bash

# files in config/
for dir in `ls config`; do
	cp -R "$HOME/.config/${dir}/" "config/"
done

# files in $HOME
for file in `ls -p | grep -Ev '/$' | grep -Ev '.*\..*'`; do
	cp "$HOME/.$file" "$file"
done
