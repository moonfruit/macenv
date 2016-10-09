#!/bin/bash

for FILE in $(brew ls); do
	echo
	echo "***************************************************************"
	brew info "$FILE" 2>&1
done
