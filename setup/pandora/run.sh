#!/bin/sh

export HOME=$(pwd)

DEFPATH=
if [ ! -d $HOME/.freesci ]
then
        mkdir $HOME/.freesci
	cp config $HOME/.freesci
fi

if [ -f $HOME/.freesci/defpath ]
then
        DEFPATH=`cat $HOME/.freesci/defpath`
fi

FILE="`zenity --file-selection --title='Select a File' --directory --filename "$DEFPATH"`"
case $? in
       0)
		echo -n "$FILE" > $HOME/.freesci/defpath
		echo "Saving $FILE to $HOME/.freesci/defpath"
                $HOME/freesci -gsdl --menudir "$FILE"
                ;;
esac

