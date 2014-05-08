#!/bin/bash

ls 2013*-*.xml | while read FILE; do
	NewName=`grep 'dc:source' $FILE | cut -d'>' -f 2 | cut -d'.' -f1 | cut -d'<' -f1 |awk '{print $0 ".xml";}'`
	if [ "$NewName" != "" ] ; then
		mv $FILE $NewName
	else 
		echo "$FILE doesn't have dc:source"
	fi
done
