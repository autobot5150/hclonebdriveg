#!/bin/sh
#########################################################
#   start.sh , Used to run tinfoil_gdrive_generator     #
#   with the user supplied enviroment variables         #
#########################################################

if [ $AUTH = "YES" ]
then
AAUTH="-AUTH"
else
AAUTH=
fi

if [ $AUTO = "YES" ]
then
AAUTO="-AUTO"
else
AAUTO=
fi

if [ $UPLOAD = "YES" ]
then
UUPLOAD="-UPLOAD"
else
UUPLOAD=
fi

if [ $UPLOADDRIVE = "YES" ]
then
UUPLOADDRIVE="-UPLOADDRIVE"
else
UUPLOADDRIVE=
fi

if [ $OLDFORMAT = "YES" ]
then
OOLDFORMAT="-OLDFORMAT"
else
OOLDFORMAT=
fi

if [ $MAKETFL = "YES" ]
then
MMAKETFL="-MAKETFL"
else
MMAKETFL=
fi

if [ $KEEPMISSINGID = "YES" ]
then
KKEEPMISSINGID="-KEEPMISSINGID"
else
KKEEPMISSINGID=
fi

if [ $DEBUG = "YES" ]
then
DDEBUG="-DEBUG"
else
DDEBUG=
fi